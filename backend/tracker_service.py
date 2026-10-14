from datetime import datetime, timedelta, timezone
from typing import Optional, Tuple
from sqlalchemy.orm import Session

from models import Application, ApplicationEvent, Scheme, Citizen
from schemas import (
    ApplicationCreateRequest,
    CitizenFriendlyStatusResponse,
    ApplicationDetailResponse,
    ApplicationEventResponse,
)


def utc_now() -> datetime:
    return datetime.now(timezone.utc)


def create_application(db: Session, req: ApplicationCreateRequest) -> Application:
    """Creates a new citizen application record with calculated deadline and audit event."""
    scheme = db.query(Scheme).filter(Scheme.scheme_id == req.scheme_id).first()
    if not scheme:
        raise ValueError(f"Scheme with ID '{req.scheme_id}' does not exist.")

    citizen = db.query(Citizen).filter(Citizen.id == req.citizen_id).first()
    if not citizen:
        raise ValueError(f"Citizen with ID '{req.citizen_id}' does not exist.")

    submitted_at = req.custom_submitted_at or utc_now()
    expected_res_date = submitted_at + timedelta(days=scheme.processing_deadline_days)

    app = Application(
        citizen_id=req.citizen_id,
        scheme_id=req.scheme_id,
        status=req.status,
        submitted_at=submitted_at,
        expected_resolution_date=expected_res_date
    )
    db.add(app)
    db.flush()

    event = ApplicationEvent(
        application_id=app.id,
        event_type="application_created",
        message=f"Application {app.id} created for '{scheme.title}' with status '{req.status}'."
    )
    db.add(event)
    db.commit()
    db.refresh(app)
    return app


def get_citizen_friendly_status(app: Application) -> CitizenFriendlyStatusResponse:
    """
    Translates raw backend database state into clear, citizen-friendly language,
    computing exact days remaining or overdue against statutory citizen service guarantees.
    """
    scheme_title = app.scheme.title if app.scheme else app.scheme_id
    now = utc_now()

    # Calculate deadline metrics
    is_overdue = False
    days_remaining: Optional[int] = None
    days_overdue: Optional[int] = None
    res_date_str: Optional[str] = None

    if app.expected_resolution_date:
        res_date_aware = app.expected_resolution_date
        if res_date_aware.tzinfo is None:
            res_date_aware = res_date_aware.replace(tzinfo=timezone.utc)

        res_date_str = res_date_aware.strftime("%d-%b-%Y")
        diff = res_date_aware - now

        if diff.total_seconds() < 0:
            is_overdue = True
            # Overdue days calculation
            days_overdue = max(1, abs(int(diff.total_seconds() // 86400)))
            days_remaining = 0
        else:
            is_overdue = False
            days_remaining = max(0, int(diff.total_seconds() // 86400))
            days_overdue = 0

    # Stage and citizen-friendly language mapping
    stage_map = {
        "draft": ("Draft Application", "Review all uploaded documents and confirm submission."),
        "submitted": ("Application Received", "Your application has been received and queued for desk review."),
        "under_review": ("Under Department Verification", "Revenue / Social Welfare officers are reviewing your records."),
        "pending_documents": ("Clarification Required", "A verification officer has requested an updated certificate."),
        "approved": ("Application Sanctioned", "Approved! Direct Benefit Transfer (DBT) credit will be initiated to your bank."),
        "rejected": ("Application Not Approved", "Review the stated grounds for refusal. You can re-apply or appeal."),
        "grievance_filed": ("Official Grievance Active", "Your escalation is being tracked with the nodal administrative officer."),
    }

    current_stage, next_action = stage_map.get(
        app.status,
        ("In Processing", "Check back regularly for official departmental updates.")
    )

    can_file_grievance = is_overdue and app.status not in ["approved", "rejected", "grievance_filed"]

    if app.status == "approved":
        explanation = f"Your application for {scheme_title} was successfully approved."
    elif app.status == "rejected":
        explanation = f"Your application for {scheme_title} was closed by the department."
    elif is_overdue:
        explanation = (
            f"Your application has crossed its statutory processing deadline of "
            f"{app.scheme.processing_deadline_days if app.scheme else 'standard'} days "
            f"(overdue by {days_overdue} day(s)). You are eligible to generate an official grievance draft."
        )
    else:
        explanation = (
            f"Your application is progressing normally within the expected timeline. "
            f"Approximately {days_remaining} day(s) remaining until expected resolution on {res_date_str}."
        )

    return CitizenFriendlyStatusResponse(
        application_id=app.id,
        scheme_title=scheme_title,
        current_stage=current_stage,
        status=app.status,
        next_action=next_action,
        is_overdue=is_overdue,
        days_remaining=days_remaining,
        days_overdue=days_overdue,
        expected_resolution_date=res_date_str,
        simple_explanation=explanation,
        can_file_grievance=can_file_grievance
    )


def update_mock_status(db: Session, app_id: str, new_status: str, message: Optional[str] = None) -> Application:
    """Mock departmental officer endpoint to update application state for demo and test walkthroughs."""
    app = db.query(Application).filter(Application.id == app_id).first()
    if not app:
        raise ValueError(f"Application '{app_id}' not found.")

    old_status = app.status
    app.status = new_status

    msg = message or f"Departmental status transitioned from '{old_status}' to '{new_status}'."
    event = ApplicationEvent(
        application_id=app.id,
        event_type="status_updated",
        message=msg
    )
    db.add(event)
    db.commit()
    db.refresh(app)
    return app
