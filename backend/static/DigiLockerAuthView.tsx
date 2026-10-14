import React, { useState, useEffect } from "react";
import {
  ShieldCheck,
  Lock,
  FileCheck,
  Clock,
  ArrowRight,
  AlertTriangle,
  Copy,
  CheckCircle2,
  ExternalLink,
  Loader2,
  FileText,
  Building,
  RefreshCw
} from "lucide-react";

export interface DigiLockerDoc {
  doc_type: string;
  doc_name: string;
  issuer: string;
  uri: string;
  verified: boolean;
  extracted_data?: {
    full_name?: string;
    dob?: string;
    annual_income?: number;
    category?: string;
    validity?: string;
    raw_issuer?: string;
  };
}

export interface DigiLockerCallbackData {
  citizen_id: string;
  full_name: string;
  digilocker_verified: boolean;
  verified_documents: string[];
  eligibility_status: "eligible" | "partially_eligible" | "ineligible";
  application_id?: string;
  scheme_id: string;
  statutory_deadline_days: number;
  expected_resolution_date: string;
  confirmation_message: string;
  documents?: DigiLockerDoc[];
}

export interface DigiLockerAuthViewProps {
  apiBaseUrl?: string;
  onApplicationCreated?: (appId: string) => void;
  onNavigateToTracker?: (appId: string) => void;
  onNavigateToDocumentDoctor?: () => void;
}

export const DigiLockerAuthView: React.FC<DigiLockerAuthViewProps> = ({
  apiBaseUrl = "",
  onApplicationCreated,
  onNavigateToTracker,
  onNavigateToDocumentDoctor,
}) => {
  const [language, setLanguage] = useState<"en" | "hi">("en");
  const [selectedScheme, setSelectedScheme] = useState<string>("widow_pension");
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [loadingMessage, setLoadingMessage] = useState<string>("");
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [verifiedData, setVerifiedData] = useState<DigiLockerCallbackData | null>(null);
  const [copiedToken, setCopiedToken] = useState<boolean>(false);

  // Internationalized copy
  const t = {
    en: {
      brandTitle: "DigiLocker & API Setu (Meri Pehchaan SSO)",
      brandBadge: "100% Paperless & Govt Verified (DigiLocker / Meri Pehchaan)",
      subtext:
        "Pull authentic digital certificates directly from Govt issuers. No document scanning or photo upload required.",
      selectScheme: "Select Target Welfare Scheme:",
      btnLogin: "Log in with DigiLocker",
      btnSimulate: "Instant 1-Click Verification (Sandbox)",
      connectingGateway: "Connecting to Government Authentication Gateway...",
      verifyingDocs: "Authenticating identity & pulling digitally signed credentials...",
      verifiedBadge: "Identity Verified via DigiLocker",
      verifiedAt: "Digitally Verified via National SSO",
      digitalSignature: "Cryptographic Signature: SHA256_RSA_DIGILOCKER_VERIFIED",
      verifiedDocsTitle: "Verified Credentials Pulled from Department Records",
      officialSigned: "Official E-Signed Document",
      appConfirmed: "Instant Application Submitted Under Citizen Charter Guarantee",
      appTokenLabel: "Application Token:",
      copyToken: "Copy Token",
      copied: "Copied!",
      schemeLabel: "Welfare Scheme:",
      slaGuarantee: "Statutory SLA Guarantee:",
      slaText: "Guaranteed Resolution Deadline: {days} Days under Citizen Charter",
      targetDate: "Target Resolution Date:",
      statusPreVerified: "Application Submitted & Documents Pre-Verified",
      trackBtn: "Track Status in Real-Time",
      missingDocAlert:
        "Missing a mandatory document in DigiLocker? You can upload paper certificates manually in Document Doctor.",
      openDocDoctor: "Open Document Doctor",
      reauthBtn: "Re-authenticate / Change Scheme",
      errorAuthFailed: "DigiLocker authorization failed. Please check credentials or retry.",
    },
    hi: {
      brandTitle: "डिजीलॉकर एवं एपीआई सेतु (मेरी पहचान SSO)",
      brandBadge: "१००% पेपरलेस एवं सरकारी प्रमाणित (डिजीलॉकर / मेरी पहचान)",
      subtext:
        "सरकारी जारीकर्ताओं से सीधे प्रामाणिक डिजिटल प्रमाण पत्र प्राप्त करें। दस्तावेज़ स्कैन या फ़ोटो अपलोड की आवश्यकता नहीं है।",
      selectScheme: "कल्याणकारी योजना का चयन करें:",
      btnLogin: "डिजीलॉकर से लॉगिन करें",
      btnSimulate: "त्वरित सत्यापन (डेमो सैंडबॉक्स)",
      connectingGateway: "सरकारी प्रमाणीकरण गेटवे से जुड़ रहे हैं...",
      verifyingDocs: "पहचान प्रमाणित की जा रही है एवं डिजिटल दस्तावेज़ प्राप्त हो रहे हैं...",
      verifiedBadge: "डिजीलॉकर द्वारा पहचान सत्यापित",
      verifiedAt: "राष्ट्रीय सिंगल साइन-ऑन (SSO) द्वारा प्रमाणित",
      digitalSignature: "क्रिप्टोग्राफिक हस्ताक्षर: SHA256_RSA_DIGILOCKER_VERIFIED",
      verifiedDocsTitle: "विभागीय रिकॉर्ड से प्राप्त प्रमाणित डिजिटल दस्तावेज़",
      officialSigned: "आधिकारिक ई-हस्ताक्षरित दस्तावेज़",
      appConfirmed: "नागरिक अधिकार पत्र के तहत तत्काल आवेदन सफलतापूर्वक दर्ज",
      appTokenLabel: "आवेदन टोकन संख्या:",
      copyToken: "कॉपी करें",
      copied: "कॉपी हो गया!",
      schemeLabel: "कल्याणकारी योजना:",
      slaGuarantee: "नागरिक चार्टर समय-सीमा:",
      slaText: "नागरिक चार्टर के तहत गारंटीकृत समाधान समय-सीमा: {days} दिन",
      targetDate: "अंतिम समाधान तिथि:",
      statusPreVerified: "आवेदन जमा किया गया एवं दस्तावेज़ पूर्व-सत्यापित",
      trackBtn: "ट्रैकर में वास्तविक समय स्थिति देखें",
      missingDocAlert:
        "क्या डिजीलॉकर में कोई दस्तावेज़ उपलब्ध नहीं है? आप डॉक्यूमेंट डॉक्टर में मैन्युअल अपलोड कर सकते हैं।",
      openDocDoctor: "डॉक्यूमेंट डॉक्टर खोलें",
      reauthBtn: "पुनः प्रमाणित करें / योजना बदलें",
      errorAuthFailed: "डिजीलॉकर प्रमाणीकरण विफल रहा। कृपया पुनः प्रयास करें।",
    },
  }[language];

  // Check URL params on mount for OAuth redirect callback return
  useEffect(() => {
    const params = new URLSearchParams(window.location.search);
    const code = params.get("code");
    const state = params.get("state");
    if (code) {
      handleCompleteOAuth(code, state || "nonce:widow_pension");
    }
  }, []);

  // Initiate Live OAuth Redirect
  const handleInitiateLiveOAuth = async () => {
    setIsLoading(true);
    setLoadingMessage(t.connectingGateway);
    setErrorMessage(null);
    try {
      const res = await fetch(
        `${apiBaseUrl}/auth/digilocker/login?target_scheme_id=${selectedScheme}&format=json`
      );
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const data = await res.json();
      if (data.auth_url || data.authorization_url) {
        window.location.href = data.auth_url || data.authorization_url;
      } else {
        throw new Error("No authorization URL returned");
      }
    } catch (err: any) {
      setIsLoading(false);
      setErrorMessage(`${t.errorAuthFailed} (${err.message})`);
    }
  };

  // Complete OAuth Callback Exchange
  const handleCompleteOAuth = async (code: string, state: string) => {
    setIsLoading(true);
    setLoadingMessage(t.verifyingDocs);
    setErrorMessage(null);
    try {
      const res = await fetch(
        `${apiBaseUrl}/auth/digilocker/callback?code=${encodeURIComponent(code)}&state=${encodeURIComponent(
          state
        )}&target_scheme_id=${selectedScheme}`
      );
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const data: DigiLockerCallbackResponse = await res.json();
      setVerifiedData(data);
      if (data.application_id && onApplicationCreated) {
        onApplicationCreated(data.application_id);
      }
    } catch (err: any) {
      setErrorMessage(`${t.errorAuthFailed} (${err.message})`);
    } finally {
      setIsLoading(false);
    }
  };

  // Simulated instant sandbox authentication
  const handleSimulateSandbox = () => {
    handleCompleteOAuth("sandbox_demo_code", `demo_nonce:${selectedScheme}`);
  };

  const copyToClipboard = (token: string) => {
    navigator.clipboard.writeText(token);
    setCopiedToken(true);
    setTimeout(() => setCopiedToken(false), 2500);
  };

  return (
    <div className="w-full space-y-6 font-sans">
      {/* Language Bar & Trust Header */}
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-2">
          <span className="w-2.5 h-2.5 rounded-full bg-emerald-500 animate-pulse"></span>
          <span className="text-xs font-bold text-slate-700 uppercase tracking-wider">
            National E-Governance Division (NeGD) Partner
          </span>
        </div>
        <div className="flex items-center bg-slate-100 p-1 rounded-xl text-xs font-bold border border-slate-200">
          <button
            onClick={() => setLanguage("en")}
            className={`px-3 py-1 rounded-lg transition ${
              language === "en" ? "bg-blue-900 text-white shadow-xs" : "text-slate-600 hover:text-slate-900"
            }`}
          >
            English
          </button>
          <button
            onClick={() => setLanguage("hi")}
            className={`px-3 py-1 rounded-lg transition ${
              language === "hi" ? "bg-blue-900 text-white shadow-xs" : "text-slate-600 hover:text-slate-900"
            }`}
          >
            हिन्दी
          </button>
        </div>
      </div>

      {/* Error Toaster */}
      {errorMessage && (
        <div className="p-4 bg-rose-50 border border-rose-200 rounded-2xl flex items-center justify-between gap-3 text-rose-800 text-xs font-semibold shadow-xs animate-shake">
          <div className="flex items-center gap-2">
            <AlertTriangle className="w-4 h-4 text-rose-600 shrink-0" />
            <span>{errorMessage}</span>
          </div>
          <button
            onClick={() => setErrorMessage(null)}
            className="text-rose-600 hover:text-rose-900 font-bold px-2 py-1 text-xs"
          >
            Dismiss
          </button>
        </div>
      )}

      {/* Reassuring Loading Overlay */}
      {isLoading && (
        <div className="p-8 bg-white border border-blue-200 rounded-3xl shadow-md text-center space-y-4">
          <div className="w-14 h-14 mx-auto rounded-2xl bg-blue-50 border border-blue-200 flex items-center justify-center text-blue-900">
            <Loader2 className="w-8 h-8 animate-spin text-blue-800" />
          </div>
          <div>
            <h4 className="text-base font-bold text-slate-900">{loadingMessage}</h4>
            <p className="text-xs text-slate-500 mt-1">
              Communicating securely with digilocker.meripehchaan.gov.in (TLS 1.3 / SHA-256)
            </p>
          </div>
        </div>
      )}

      {/* =========================================================================
          VIEW 1: DIGILOCKER ACTION CARD (Pre-Login State)
          ========================================================================= */}
      {!isLoading && !verifiedData && (
        <div className="relative overflow-hidden rounded-3xl border border-blue-950/20 shadow-lg text-white"
             style={{ background: "linear-gradient(135deg, #002B49 0%, #083E6A 50%, #0F52BA 100%)" }}>
          {/* Subtle Gov Pattern Overlay */}
          <div className="absolute inset-0 opacity-10 pointer-events-none bg-[radial-gradient(#fff_1px,transparent_1px)] [background-size:16px_16px]" />

          <div className="relative p-6 sm:p-8 space-y-6">
            {/* Header Badge */}
            <div className="flex flex-wrap items-center justify-between gap-3">
              <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-white/10 backdrop-blur-md border border-white/20 text-xs font-bold text-amber-300">
                <ShieldCheck className="w-4 h-4 text-amber-400" />
                <span>{t.brandBadge}</span>
              </div>
              <span className="text-[11px] text-blue-200 font-medium">Govt of India SSO Gateway</span>
            </div>

            {/* Main Pitch */}
            <div className="space-y-2">
              <h3 className="text-xl sm:text-2xl font-black tracking-tight text-white flex items-center gap-2.5">
                <span className="p-2 bg-amber-400 text-slate-950 rounded-xl inline-flex shadow-sm">
                  <Lock className="w-5 h-5" />
                </span>
                <span>{t.brandTitle}</span>
              </h3>
              <p className="text-xs sm:text-sm text-blue-100 max-w-2xl leading-relaxed">{t.subtext}</p>
            </div>

            {/* Target Scheme Dropdown */}
            <div className="bg-white/10 backdrop-blur-md p-4 rounded-2xl border border-white/15 space-y-2">
              <label className="block text-xs font-bold text-blue-200 uppercase tracking-wide">
                {t.selectScheme}
              </label>
              <select
                value={selectedScheme}
                onChange={(e) => setSelectedScheme(e.target.value)}
                className="w-full bg-slate-900/90 text-white font-semibold text-xs sm:text-sm px-4 py-2.5 rounded-xl border border-blue-400/40 focus:ring-2 focus:ring-amber-400 focus:outline-hidden"
              >
                <option value="widow_pension">
                  Indira Gandhi National Widow Pension Scheme (IGNWPS / विधवा पेंशन)
                </option>
                <option value="scholarship">
                  Post-Matric Scholarship Scheme for SC/ST/OBC Students (छात्रवृत्ति योजना)
                </option>
                <option value="kisan_yojna">
                  Pradhan Mantri Kisan Samman Nidhi (PM-KISAN / किसान सम्मान निधि)
                </option>
              </select>
            </div>

            {/* High-Visibility Call-To-Action Buttons */}
            <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-3 pt-2">
              <button
                onClick={handleInitiateLiveOAuth}
                className="flex-1 bg-amber-400 hover:bg-amber-300 text-slate-950 font-black px-6 py-3.5 rounded-2xl text-sm transition shadow-md flex items-center justify-center gap-2.5 group"
              >
                <Lock className="w-4 h-4 text-slate-950 group-hover:rotate-12 transition-transform" />
                <span>{t.btnLogin}</span>
                <ExternalLink className="w-4 h-4 text-slate-800 ml-1 opacity-70" />
              </button>

              <button
                onClick={handleSimulateSandbox}
                className="bg-white/15 hover:bg-white/25 text-white font-bold px-5 py-3.5 rounded-2xl text-xs sm:text-sm transition border border-white/25 flex items-center justify-center gap-2"
                title="Instant live evaluation using authentic test government profile"
              >
                <RefreshCw className="w-4 h-4 text-amber-300" />
                <span>{t.btnSimulate}</span>
              </button>
            </div>
          </div>
        </div>
      )}

      {/* =========================================================================
          VIEW 2: POST-LOGIN VERIFIED APPLICATION DASHBOARD
          ========================================================================= */}
      {!isLoading && verifiedData && (
        <div className="space-y-6 animate-fadeIn">
          {/* 1. Verification Banner */}
          <div className="bg-emerald-50 border-2 border-emerald-500 rounded-3xl p-6 shadow-sm flex flex-col md:flex-row md:items-center justify-between gap-4">
            <div className="flex items-center gap-4">
              <div className="w-12 h-12 rounded-2xl bg-emerald-600 text-white flex items-center justify-center shadow-md shrink-0">
                <CheckCircle2 className="w-7 h-7" />
              </div>
              <div>
                <div className="flex flex-wrap items-center gap-2">
                  <span className="px-3 py-1 rounded-full bg-emerald-600 text-white text-xs font-bold shadow-xs">
                    {t.verifiedBadge}
                  </span>
                  <span className="text-xs font-mono font-bold text-slate-600 bg-white px-2 py-0.5 rounded-md border border-slate-200">
                    ID: {verifiedData.citizen_id}
                  </span>
                </div>
                <h3 className="text-lg font-black text-slate-900 mt-1">
                  {verifiedData.full_name} &bull; <span className="text-emerald-800">{t.verifiedAt}</span>
                </h3>
                <p className="text-[11px] text-emerald-800 font-mono mt-0.5">{t.digitalSignature}</p>
              </div>
            </div>

            <button
              onClick={() => setVerifiedData(null)}
              className="self-start md:self-center px-4 py-2 text-xs font-bold text-slate-700 bg-white border border-slate-300 hover:bg-slate-50 rounded-xl transition flex items-center gap-1.5"
            >
              <RefreshCw className="w-3.5 h-3.5 text-slate-500" />
              <span>{t.reauthBtn}</span>
            </button>
          </div>

          {/* 2. Instant Direct Application Confirmation Card */}
          <div className="bg-gradient-to-br from-blue-950 via-slate-900 to-indigo-950 text-white p-6 sm:p-8 rounded-3xl shadow-xl space-y-6 border border-blue-900">
            <div className="flex flex-wrap items-center justify-between gap-3 border-b border-white/10 pb-4">
              <div className="space-y-1">
                <div className="inline-flex items-center gap-1.5 text-amber-400 text-xs font-bold uppercase tracking-wider">
                  <Clock className="w-4 h-4" />
                  <span>{t.appConfirmed}</span>
                </div>
                <h4 className="text-xl sm:text-2xl font-black text-white">
                  {verifiedData.scheme_id === "widow_pension"
                    ? "Indira Gandhi National Widow Pension Scheme (IGNWPS)"
                    : verifiedData.scheme_id === "scholarship"
                    ? "Post-Matric Scholarship Scheme for SC/ST/OBC Students"
                    : "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN)"}
                </h4>
              </div>

              {/* Application Token with Copy Button */}
              {verifiedData.application_id && (
                <div className="flex items-center gap-2 bg-white/10 backdrop-blur-md p-2 rounded-2xl border border-white/20">
                  <div className="px-3 py-1">
                    <span className="block text-[10px] text-blue-200 uppercase font-bold">{t.appTokenLabel}</span>
                    <span className="font-mono font-black text-lg text-amber-300 tracking-wider">
                      {verifiedData.application_id}
                    </span>
                  </div>
                  <button
                    onClick={() => copyToClipboard(verifiedData.application_id!)}
                    className="p-2.5 bg-amber-400 hover:bg-amber-300 text-slate-950 rounded-xl transition font-bold text-xs flex items-center gap-1"
                    title={t.copyToken}
                  >
                    {copiedToken ? <CheckCircle2 className="w-4 h-4 text-slate-950" /> : <Copy className="w-4 h-4 text-slate-950" />}
                  </button>
                </div>
              )}
            </div>

            {/* SLA Timeframe Guarantee Banner */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="bg-white/10 backdrop-blur-md p-4 rounded-2xl border border-white/15 space-y-1">
                <span className="text-xs font-bold text-blue-200">{t.slaGuarantee}</span>
                <p className="text-sm font-black text-amber-300">
                  {t.slaText.replace("{days}", String(verifiedData.statutory_deadline_days))}
                </p>
                <p className="text-[11px] text-slate-300">
                  Guaranteed under Section 4 of State Right to Public Services Act.
                </p>
              </div>

              <div className="bg-white/10 backdrop-blur-md p-4 rounded-2xl border border-white/15 space-y-1">
                <span className="text-xs font-bold text-blue-200">{t.targetDate}</span>
                <p className="text-sm font-black text-white">
                  {verifiedData.expected_resolution_date || "Within 30 Days"}
                </p>
                <p className="text-[11px] text-slate-300">
                  If overdue, BenefitBridge automatically drafts an escalation grievance.
                </p>
              </div>
            </div>

            {/* Next Steps Progress Bar */}
            <div className="space-y-3 pt-2">
              <span className="text-xs font-bold uppercase tracking-wider text-blue-300">
                Statutory Tracking Milestones
              </span>
              <div className="grid grid-cols-1 sm:grid-cols-4 gap-3 text-xs">
                <div className="p-3 rounded-xl bg-emerald-500/20 border border-emerald-400/40 text-emerald-200 flex items-center gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0" />
                  <span>1. National SSO Verified</span>
                </div>
                <div className="p-3 rounded-xl bg-emerald-500/20 border border-emerald-400/40 text-emerald-200 flex items-center gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0" />
                  <span>2. Credentials E-Signed</span>
                </div>
                <div className="p-3 rounded-xl bg-amber-400/20 border border-amber-300/40 text-amber-200 font-bold flex items-center gap-2">
                  <Clock className="w-4 h-4 text-amber-400 shrink-0 animate-pulse" />
                  <span>3. Queued at Department</span>
                </div>
                <div className="p-3 rounded-xl bg-white/5 border border-white/10 text-slate-400 flex items-center gap-2">
                  <span className="w-4 h-4 rounded-full border border-slate-500 flex items-center justify-center text-[10px]">
                    4
                  </span>
                  <span>4. DBT Bank Transfer</span>
                </div>
              </div>
            </div>

            {/* Action Bar */}
            <div className="flex flex-wrap items-center justify-between gap-3 pt-4 border-t border-white/10">
              <span className="text-xs text-slate-300 font-medium">
                🛡️ Zero Aadhaar Stored &bull; Pre-Verified by State Department Authorities
              </span>
              {verifiedData.application_id && (
                <button
                  onClick={() =>
                    onNavigateToTracker
                      ? onNavigateToTracker(verifiedData.application_id!)
                      : (window.location.href = `/applications/${verifiedData.application_id}/status`)
                  }
                  className="bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-black px-6 py-3 rounded-xl text-xs sm:text-sm transition flex items-center gap-2 shadow-lg"
                >
                  <span>{t.trackBtn}</span>
                  <ArrowRight className="w-4 h-4" />
                </button>
              )}
            </div>
          </div>

          {/* 3. Verified Documents Grid */}
          <div className="space-y-4">
            <div className="flex items-center justify-between">
              <h4 className="font-black text-slate-900 text-base flex items-center gap-2">
                <FileCheck className="w-5 h-5 text-emerald-600" />
                <span>{t.verifiedDocsTitle}</span>
              </h4>
              <span className="text-xs bg-emerald-100 text-emerald-900 font-bold px-2.5 py-1 rounded-full border border-emerald-300">
                {verifiedData.verified_documents.length} Records Verified
              </span>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {/* Card 1: Ration Card */}
              <div className="bg-white p-5 rounded-2xl border border-slate-200 shadow-sm space-y-3 hover:border-emerald-500 transition">
                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-2.5">
                    <div className="p-2.5 bg-blue-50 text-blue-900 rounded-xl">
                      <FileText className="w-5 h-5" />
                    </div>
                    <div>
                      <h5 className="font-bold text-sm text-slate-900">Ration Card (NFSA / BPL Priority)</h5>
                      <span className="text-[11px] text-slate-500 font-mono">
                        in.gov.delhi.food-RATION-DL07892140182
                      </span>
                    </div>
                  </div>
                  <span className="text-[10px] bg-emerald-100 text-emerald-800 font-bold px-2 py-0.5 rounded-full border border-emerald-300">
                    {t.officialSigned}
                  </span>
                </div>

                <div className="bg-slate-50 p-3 rounded-xl text-xs space-y-1 border border-slate-100 text-slate-700">
                  <div className="flex items-center gap-1.5">
                    <Building className="w-3.5 h-3.5 text-slate-500" />
                    <span><strong>Issuer:</strong> Department of Food Supplies and Consumer Affairs, Govt of NCT Delhi</span>
                  </div>
                  <div><strong>Category:</strong> BPL (Priority Household) &bull; <strong>Validity:</strong> Permanent</div>
                </div>
              </div>

              {/* Card 2: Income Certificate */}
              <div className="bg-white p-5 rounded-2xl border border-slate-200 shadow-sm space-y-3 hover:border-emerald-500 transition">
                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-2.5">
                    <div className="p-2.5 bg-emerald-50 text-emerald-900 rounded-xl">
                      <FileText className="w-5 h-5" />
                    </div>
                    <div>
                      <h5 className="font-bold text-sm text-slate-900">Annual Income Certificate</h5>
                      <span className="text-[11px] text-slate-500 font-mono">
                        in.gov.delhi.revenue-INCER-2024-981240182
                      </span>
                    </div>
                  </div>
                  <span className="text-[10px] bg-emerald-100 text-emerald-800 font-bold px-2 py-0.5 rounded-full border border-emerald-300">
                    {t.officialSigned}
                  </span>
                </div>

                <div className="bg-slate-50 p-3 rounded-xl text-xs space-y-1 border border-slate-100 text-slate-700">
                  <div className="flex items-center gap-1.5">
                    <Building className="w-3.5 h-3.5 text-slate-500" />
                    <span><strong>Issuer:</strong> Revenue Department, Govt of NCT Delhi</span>
                  </div>
                  <div><strong>Assessed Income:</strong> ₹0.00 / Nil &bull; <strong>Authority:</strong> Tehsildar Sadar</div>
                </div>
              </div>
            </div>

            {/* Fallback Missing Document Alert */}
            <div className="p-4 bg-amber-50/80 border border-amber-200 rounded-2xl flex flex-col sm:flex-row sm:items-center justify-between gap-3 text-xs text-amber-900 font-medium">
              <div className="flex items-center gap-2.5">
                <AlertTriangle className="w-5 h-5 text-amber-600 shrink-0" />
                <span>{t.missingDocAlert}</span>
              </div>
              <button
                onClick={onNavigateToDocumentDoctor}
                className="shrink-0 px-3.5 py-1.5 bg-amber-600 hover:bg-amber-700 text-white font-bold rounded-xl transition shadow-xs"
              >
                {t.openDocDoctor} &rarr;
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default DigiLockerAuthView;

