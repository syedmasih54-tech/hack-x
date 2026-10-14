from datetime import datetime, timezone
from typing import Dict, Any, List, Optional
from sqlalchemy.orm import Session

from models import Application, ApplicationEvent, Grievance, Citizen, Scheme
from schemas import GrievanceDraftResponse, GrievanceDraftRequest


def utc_now() -> datetime:
    return datetime.now(timezone.utc)


SUGGESTED_OFFICIAL_CHANNELS = [
    {
        "channel_name": "CPGRAMS (Centralized Public Grievance Redress and Monitoring System)",
        "type": "National Web Portal",
        "url": "https://pgportal.gov.in",
        "description": "Apex government portal for public grievances across central ministries and state departments. Trackable within 30 days."
    },
    {
        "channel_name": "State Chief Minister Helpline / Jansunwai",
        "type": "Toll-Free Phone / Mobile App",
        "url": "https://jansunwai.up.nic.in (or respective state CM portal)",
        "description": "Dial 1076 / 181 or register on your respective state CM helpline portal for priority district magistrate oversight."
    },
    {
        "channel_name": "District Social Welfare Officer (Tehsil / Collectorate)",
        "type": "In-Person Written Submission",
        "url": "https://districts.ecourts.gov.in / Local District Magistrate Office",
        "description": "Submit a printed copy of this grievance draft directly at the Citizen Facilitation Center (Suwidha / CSC) at the Sub-Divisional Magistrate (SDM) office."
    }
]


def generate_grievance_draft(
    db: Session,
    application_id: str,
    citizen_remarks: Optional[str] = None
) -> GrievanceDraftResponse:
    """
    Constructs a formal, respectful, and legally sound grievance escalation draft
    when an application crosses its expected resolution timeline.
    Does NOT automatically submit to external government portals.
    """
    app = db.query(Application).filter(Application.id == application_id).first()
    if not app:
        raise ValueError(f"Application with ID '{application_id}' not found.")

    scheme = app.scheme
    citizen = app.citizen
    now = utc_now()

    scheme_title = scheme.title if scheme else "Welfare Scheme"
    deadline_days = scheme.processing_deadline_days if scheme else 30
    citizen_id = citizen.id if citizen else "CIT-UNKNOWN"

    sub_date_str = (
        app.submitted_at.strftime("%d-%b-%Y")
        if app.submitted_at
        else "Unknown Submission Date"
    )

    # Check overdue status
    res_date_aware = app.expected_resolution_date or (app.submitted_at or now)
    if res_date_aware.tzinfo is None:
        res_date_aware = res_date_aware.replace(tzinfo=timezone.utc)

    diff = res_date_aware - now
    if diff.total_seconds() < 0:
        days_overdue = max(1, abs(int(diff.total_seconds() // 86400)))
    else:
        days_overdue = 0

    exp_date_str = res_date_aware.strftime("%d-%b-%Y")

    # Construct formal draft text
    remarks_section = f"\nAdditional Citizen Remarks:\n\"{citizen_remarks.strip()}\"\n" if citizen_remarks else ""

    draft_text = f"""TO:
The Competent Grievance Redressal Officer / District Social Welfare Officer,
Office of the District Magistrate & Social Welfare Department.

SUBJECT: Formal Representation regarding Delayed Processing of Application Ref: {app.id} ({scheme_title})

Respected Sir / Madam,

I am writing to formally bring to your notice that my welfare application under the "{scheme_title}" has exceeded the expected public service guarantee timeframe without formal communication of sanction or reasoned rejection.

SUMMARY OF APPLICATION PARTICULARS:
- Citizen Reference ID: {citizen_id}
- Application ID / Acknowledgment Token: {app.id}
- Welfare Scheme Name: {scheme_title}
- Date of Initial Submission: {sub_date_str}
- Guaranteed Resolution Deadline: {exp_date_str} (Citizen Charter Limit: {deadline_days} days)
- Current Recorded Status: {app.status.upper()}
- Duration Beyond Statutory Deadline: {days_overdue} day(s) overdue
{remarks_section}
Under the Right to Public Services and administrative Citizen Charters, public authorities are mandated to dispose of pension and welfare benefit applications within {deadline_days} days. The delay of {days_overdue} days causes undue financial stress and administrative hardship to the eligible beneficiary.

PRAYER / REQUESTED RELIEF:
1. Kindly review this pending application on a priority basis and expedite the final sanction order.
2. In case any additional document or clarification is required, please communicate the specific deficiency in writing.
3. Facilitate the initiation of Direct Benefit Transfer (DBT) credit into the linked bank account at the earliest.

I remain available to provide any further verification if summoned.

Yours faithfully,
Beneficiary Applicant
Citizen Reference: {citizen_id}
Application Token: {app.id}
Generated via BenefitBridge Welfare Navigator
"""

    # Persist the grievance draft in the database
    grievance = Grievance(
        application_id=app.id,
        draft_text=draft_text,
        status="drafted"
    )
    db.add(grievance)

    # Add audit event to application timeline
    event = ApplicationEvent(
        application_id=app.id,
        event_type="grievance_drafted",
        message=f"Grievance draft generated for overdue application ({days_overdue} days past deadline)."
    )
    db.add(event)
    db.commit()
    db.refresh(grievance)

    return GrievanceDraftResponse(
        grievance_id=grievance.id,
        application_id=app.id,
        citizen_reference_id=citizen_id,
        scheme_name=scheme_title,
        submission_date=sub_date_str,
        expected_resolution_date=exp_date_str,
        current_status=app.status,
        days_overdue=days_overdue,
        draft_text=draft_text,
        suggested_official_channels=SUGGESTED_OFFICIAL_CHANNELS
    )
