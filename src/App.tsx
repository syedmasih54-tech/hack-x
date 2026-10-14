import React, { useState, useEffect } from "react";

// Built-in URL helpers so "./lib/urls" never causes an [UNRESOLVED_IMPORT] build error
const API_BASE_URL =
  (import.meta as unknown as { env?: Record<string, string> }).env
    ?.VITE_API_BASE_URL || "http://127.0.0.1:8000";

export function getPortalUrl(path: string = ""): string {
  const cleanPath = path.startsWith("/") ? path : `/${path}`;
  return `${API_BASE_URL}${cleanPath}`;
}

export function getDigiLockerUrl(targetSchemeId: string = "ignoaps"): string {
  return `${API_BASE_URL}/auth/digilocker/login?target_scheme_id=${encodeURIComponent(
    targetSchemeId
  )}`;
}

type Language = "en" | "hi";

interface SchemeItem {
  id: string;
  title: string;
  ministry: string;
  level: string;
  slaDays: number;
  charterClause: string;
  eligibilityText: string;
  benefitAmount: string;
  portalUrl: string;
  guidelinesUrl: string;
}

const TRANSLATIONS: Record<
  Language,
  {
    brandTagline: string;
    liveGateway: string;
    apiDocs: string;
    skipIntro: string;
    dpiReady: string;
    navOverview: string;
    navSchemes: string;
    navEligibility: string;
    navDocDoctor: string;
    heroBadge: string;
    heroTitle: string;
    heroSubtitle: string;
    card1Title: string;
    card1Desc: string;
    card1Btn: string;
    card2Title: string;
    card2Desc: string;
    card2Btn: string;
    card2StopBtn: string;
    card2Listening: string;
    card2SampleTranscript: string;
    card3Title: string;
    card3Desc: string;
    card3Btn: string;
    schemesHeading: string;
    schemesSubheading: string;
    ministryLabel: string;
    eligibilityLabel: string;
    benefitLabel: string;
    slaBadgeSuffix: string;
    applyDigiLockerBtn: string;
    visitPortalBtn: string;
    eligibilityModalTitle: string;
    ageLabel: string;
    incomeLabel: string;
    checkNowBtn: string;
    eligibleMsg: string;
    notEligibleMsg: string;
    docModalTitle: string;
    docNameAadhaarLabel: string;
    docNameBankLabel: string;
    verifyMatchBtn: string;
    matchWarning: string;
    matchSuccess: string;
    slaPrefix: string;
    slaStrong: string;
    slaRight: string;
    schemes: SchemeItem[];
  }
> = {
  en: {
    brandTagline: "Citizen Welfare Navigator • सेतु नागरिक सशक्तिकरण",
    liveGateway: "Live DPI Gateway",
    apiDocs: "API Docs",
    skipIntro: "Skip Intro →",
    dpiReady: "DigiLocker • API Setu • Citizen Charter DPI Ready",
    navOverview: "Dashboard",
    navSchemes: "Live Schemes",
    navEligibility: "Eligibility Check",
    navDocDoctor: "Document Doctor",
    heroBadge: "National Welfare & Statutory Rights Layer",
    heroTitle: "Direct Benefit Access, Guaranteed Deadlines.",
    heroSubtitle:
      "Pre-screen welfare eligibility against official government rules, prevent DBT bank rejections caused by name spelling mismatches, and apply directly via DigiLocker.",
    card1Title: "DigiLocker Direct Apply",
    card1Desc:
      "Connect your government-verified Meri Pehchaan / DigiLocker account to pull authentic Ration Cards, Income, and Age Certificates automatically.",
    card1Btn: "Log in with DigiLocker",
    card2Title: "Voice Assistance (हिंदी / EN)",
    card2Desc:
      "Speak your age, annual income, and situation naturally in Hindi or English. Whisper AI transcribes and pre-fills your welfare check.",
    card2Btn: "Start Voice Input",
    card2StopBtn: "Stop Recording",
    card2Listening: "Listening... Speak in Hindi or English",
    card2SampleTranscript:
      "\"My age is 66 years and my annual family income is ₹42,000. Which pension schemes can I apply for?\"",
    card3Title: "Document Doctor (Mismatch Check)",
    card3Desc:
      "Phonetic transliteration engine flags spelling variations (e.g., Sunita Devi vs Sunitha Devi) across Ration Card and Bank Passbook before submission.",
    card3Btn: "Run Document Doctor",
    schemesHeading: "Verified Government Schemes & Official Portals",
    schemesSubheading:
      "Live eligibility parameters synced with NSAP, myScheme.gov.in, and National Scholarship Portal with statutory Citizen Charter SLA timelines.",
    ministryLabel: "Ministry / Department",
    eligibilityLabel: "Eligibility Criteria",
    benefitLabel: "Direct Benefit (DBT)",
    slaBadgeSuffix: "Days Statutory SLA",
    applyDigiLockerBtn: "One-Click DigiLocker Apply",
    visitPortalBtn: "Official Portal ↗",
    eligibilityModalTitle: "Instant Statutory Eligibility Pre-Screen",
    ageLabel: "Citizen Age (Years)",
    incomeLabel: "Annual Family Income (₹ INR)",
    checkNowBtn: "Evaluate Official Rules",
    eligibleMsg:
      "✓ You meet the primary age and income criteria for Central NSAP & State Welfare schemes! Proceed with DigiLocker to verify certificates.",
    notEligibleMsg:
      "ℹ Based on the entered age/income, you exceed the BPL threshold for NSAP pensions, but you can explore open merit scholarships below.",
    docModalTitle: "Document Doctor: Pre-Submission Name & DBT Verifier",
    docNameAadhaarLabel: "Name on Identity / Ration Card",
    docNameBankLabel: "Name on Bank Passbook (DBT Account)",
    verifyMatchBtn: "Check Phonetic & DBT Compatibility",
    matchWarning:
      "⚠ Phonetic Variation Detected! Minor vowel/consonant difference found. We have generated an automated One-And-The-Same-Person Annexure to prevent bank DBT rejection.",
    matchSuccess:
      "✓ 100% Exact Character Match! Your documents are ready for zero-rejection Direct Benefit Transfer.",
    slaPrefix: "Right to Public Service SLA:",
    slaStrong: "30–45 Day Statutory Disposal Guarantee",
    slaRight: "Auto-CPGRAMS grievance escalation enabled if deadlines lapse",
    schemes: [
      {
        id: "ignoaps",
        title: "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)",
        ministry: "Ministry of Rural Development (MoRD)",
        level: "Central • NSAP",
        slaDays: 30,
        charterClause: "Right to Public Services Act • Citizen Charter Sec 4(1)",
        eligibilityText: "Age 60+ years • BPL Household / Annual Income below ₹1,00,000",
        benefitAmount: "₹1,000 – ₹2,500 / month (Central + State Top-up via DBT)",
        portalUrl: "https://nsap.dord.gov.in",
        guidelinesUrl: "https://www.myscheme.gov.in/schemes/ignoaps",
      },
      {
        id: "ignwps",
        title: "Indira Gandhi National Widow Pension Scheme (IGNWPS)",
        ministry: "Ministry of Rural Development (MoRD)",
        level: "Central • NSAP",
        slaDays: 30,
        charterClause: "NSAP Operational Guidelines & Citizen Charter SLA",
        eligibilityText: "Women aged 40–79 years • BPL Category / Income Certificate",
        benefitAmount: "₹1,500 – ₹2,500 / month Direct Bank Transfer",
        portalUrl: "https://nsap.dord.gov.in",
        guidelinesUrl: "https://www.myscheme.gov.in/schemes/ignwps",
      },
      {
        id: "nfbs",
        title: "National Family Benefit Scheme (NFBS)",
        ministry: "Ministry of Rural Development (MoRD)",
        level: "Central • NSAP",
        slaDays: 45,
        charterClause: "Statutory Bereavement Support Guarantee",
        eligibilityText: "Bereaved BPL household on demise of primary breadwinner (18–59 yrs)",
        benefitAmount: "₹20,000 Lump-Sum Direct Assistance",
        portalUrl: "https://nsap.dord.gov.in",
        guidelinesUrl: "https://www.myscheme.gov.in/schemes/nfbs",
      },
      {
        id: "nsp_post_matric",
        title: "Central Sector & Post-Matric Scholarship Scheme",
        ministry: "Ministry of Social Justice & Empowerment / MeitY",
        level: "Central • NSP",
        slaDays: 45,
        charterClause: "National Scholarship Portal Verification SLA",
        eligibilityText: "Students in Class 11 to Post-Graduation • Family Income ≤ ₹2,50,000",
        benefitAmount: "Full Tuition Fee Reimbursement + Academic Allowance",
        portalUrl: "https://scholarships.gov.in",
        guidelinesUrl: "https://www.myscheme.gov.in",
      },
    ],
  },
  hi: {
    brandTagline: "नागरिक कल्याण नेविगेटर • सेतु नागरिक सशक्तिकरण",
    liveGateway: "लाइव डीपीआई गेटवे",
    apiDocs: "एपीआई डॉक्स",
    skipIntro: "आगे बढ़ें →",
    dpiReady: "डिजीलॉकर • एपीआई सेतु • सिटीजन चार्टर DPI तैयार",
    navOverview: "मुख्य पटल",
    navSchemes: "सरकारी योजनाएं",
    navEligibility: "पात्रता जांच",
    navDocDoctor: "डॉक्यूमेंट डॉक्टर",
    heroBadge: "राष्ट्रीय कल्याण एवं कानूनी अधिकार मंच",
    heroTitle: "सीधा सरकारी लाभ, तय समय-सीमा की गारंटी।",
    heroSubtitle:
      "आधिकारिक सरकारी नियमों के अनुसार अपनी पात्रता जांचें, नाम की स्पेलिंग में अंतर से रुकने वाले बैंक डीबीटी (DBT) भुगतान को सुधारें और डिजीलॉकर से सीधे आवेदन करें।",
    card1Title: "डिजीलॉकर से सीधा आवेदन",
    card1Desc:
      "अपना सरकारी सत्यापित मेरी पहचान / डिजीलॉकर खाता जोड़ें। राशन कार्ड, आय और आयु प्रमाण पत्र स्वचालित रूप से प्राप्त करें।",
    card1Btn: "डिजीलॉकर से लॉगिन करें",
    card2Title: "आवाज़ से सहायता (हिंदी / EN)",
    card2Desc:
      "अपनी उम्र, वार्षिक आय और स्थिति हिंदी या अंग्रेजी में सामान्य रूप से बोलें। AI आपकी आवाज़ सुनकर पात्रता फॉर्म अपने आप भर देगा।",
    card2Btn: "बोलकर जानकारी दर्ज करें",
    card2StopBtn: "रिकॉर्डिंग रोकें",
    card2Listening: "सुन रहे हैं... कृपया हिंदी या अंग्रेजी में बोलें",
    card2SampleTranscript:
      "\"मेरी उम्र 66 वर्ष है और मेरी वार्षिक पारिवारिक आय ₹42,000 है। मैं किन पेंशन योजनाओं के लिए आवेदन कर सकता हूँ?\"",
    card3Title: "डॉक्यूमेंट डॉक्टर (स्पेलिंग जांच)",
    card3Desc:
      "आवेदन से पहले राशन कार्ड और बैंक पासबुक में नाम के अंतर (जैसे Sunita Devi बनाम Sunitha Devi) की तुरंत पहचान कर DBT रिजेक्शन रोकें।",
    card3Btn: "दस्तावेज़ स्पेलिंग जांचें",
    schemesHeading: "सत्यापित सरकारी योजनाएं और आधिकारिक पोर्टल",
    schemesSubheading:
      "NSAP, myScheme.gov.in और नेशनल स्कॉलरशिप पोर्टल के लाइव नियमों एवं सिटीजन चार्टर समय-सीमा (SLA) के साथ समन्वित।",
    ministryLabel: "मंत्रालय / विभाग",
    eligibilityLabel: "पात्रता मापदंड",
    benefitLabel: "सीधा आर्थिक लाभ (DBT)",
    slaBadgeSuffix: "दिन की कानूनी समय-सीमा",
    applyDigiLockerBtn: "डिजीलॉकर से एक-क्लिक आवेदन",
    visitPortalBtn: "आधिकारिक पोर्टल ↗",
    eligibilityModalTitle: "तत्काल सरकारी पात्रता परीक्षण",
    ageLabel: "नागरिक की आयु (वर्षों में)",
    incomeLabel: "वार्षिक पारिवारिक आय (₹ रुपये में)",
    checkNowBtn: "पात्रता की जांच करें",
    eligibleMsg:
      "✓ आप केंद्रीय NSAP और राज्य कल्याण योजनाओं के प्राथमिक आयु और आय मापदंडों को पूरा करते हैं! प्रमाण पत्र सत्यापन के लिए डिजीलॉकर से आगे बढ़ें।",
    notEligibleMsg:
      "ℹ दर्ज की गई आयु/आय के आधार पर, आप बीपीएल पेंशन सीमा से ऊपर हैं, लेकिन आप नीचे दी गई छात्रवृत्ति योजनाओं के लिए आवेदन कर सकते हैं।",
    docModalTitle: "डॉक्यूमेंट डॉक्टर: नाम एवं बैंक DBT मिलान जांच",
    docNameAadhaarLabel: "पहचान पत्र / राशन कार्ड पर नाम",
    docNameBankLabel: "बैंक पासबुक पर नाम (DBT खाता)",
    verifyMatchBtn: "स्पेलिंग और DBT मिलान जांचें",
    matchWarning:
      "⚠ स्पेलिंग में अंतर पाया गया! अक्षरों में मामूली अंतर है। बैंक DBT अस्वीकृति को रोकने के लिए स्वचालित घोषणा-पत्र (Annexure) तैयार कर दिया गया है।",
    matchSuccess:
      "✓ 100% सटीक मिलान! आपके दस्तावेज़ बिना किसी रुकावट के सीधे बैंक लाभ (DBT) के लिए तैयार हैं।",
    slaPrefix: "लोक सेवा अधिकार (SLA):",
    slaStrong: "30–45 दिन में निस्तारण की कानूनी गारंटी",
    slaRight: "समय-सीमा पार होने पर ऑटो-CPGRAMS शिकायत निवारण सुविधा",
    schemes: [
      {
        id: "ignoaps",
        title: "इंदिरा गांधी राष्ट्रीय वृद्धावस्था पेंशन योजना (IGNOAPS)",
        ministry: "ग्रामीण विकास मंत्रालय (भारत सरकार)",
        level: "केंद्र सरकार • NSAP",
        slaDays: 30,
        charterClause: "लोक सेवा गारंटी अधिनियम • सिटीजन चार्टर धारा 4(1)",
        eligibilityText: "आयु 60+ वर्ष • बीपीएल परिवार / वार्षिक आय ₹1,00,000 से कम",
        benefitAmount: "₹1,000 – ₹2,500 / माह (केंद्र + राज्य अंशदान सीधे बैंक खाते में)",
        portalUrl: "https://nsap.dord.gov.in",
        guidelinesUrl: "https://www.myscheme.gov.in/schemes/ignoaps",
      },
      {
        id: "ignwps",
        title: "इंदिरा गांधी राष्ट्रीय विधवा पेंशन योजना (IGNWPS)",
        ministry: "ग्रामीण विकास मंत्रालय (भारत सरकार)",
        level: "केंद्र सरकार • NSAP",
        slaDays: 30,
        charterClause: "NSAP संचालन दिशानिर्देश एवं सिटीजन चार्टर SLA",
        eligibilityText: "40–79 वर्ष की महिलाएं • बीपीएल श्रेणी / आय प्रमाण पत्र धारक",
        benefitAmount: "₹1,500 – ₹2,500 / माह सीधा बैंक हस्तांतरण (DBT)",
        portalUrl: "https://nsap.dord.gov.in",
        guidelinesUrl: "https://www.myscheme.gov.in/schemes/ignwps",
      },
      {
        id: "nfbs",
        title: "राष्ट्रीय पारिवारिक लाभ योजना (NFBS)",
        ministry: "ग्रामीण विकास मंत्रालय (भारत सरकार)",
        level: "केंद्र सरकार • NSAP",
        slaDays: 45,
        charterClause: "कानूनी पारिवारिक सहायता समय-सीमा गारंटी",
        eligibilityText: "मुख्य कमाने वाले सदस्य (18–59 वर्ष) की मृत्यु पर बीपीएल परिवार को सहायता",
        benefitAmount: "₹20,000 एकमुश्त सीधी सहायता राशि",
        portalUrl: "https://nsap.dord.gov.in",
        guidelinesUrl: "https://www.myscheme.gov.in/schemes/nfbs",
      },
      {
        id: "nsp_post_matric",
        title: "केंद्रीय क्षेत्र एवं पोस्ट-मैट्रिक छात्रवृत्ति योजना (NSP)",
        ministry: "सामाजिक न्याय और अधिकारिता मंत्रालय / MeitY",
        level: "केंद्र सरकार • NSP",
        slaDays: 45,
        charterClause: "नेशनल स्कॉलरशिप पोर्टल सत्यापन समय-सीमा",
        eligibilityText: "कक्षा 11 से स्नातकोत्तर छात्र • पारिवारिक वार्षिक आय ≤ ₹2,50,000",
        benefitAmount: "पूर्ण शिक्षण शुल्क प्रतिपूर्ति + शैक्षणिक भत्ता",
        portalUrl: "https://scholarships.gov.in",
        guidelinesUrl: "https://www.myscheme.gov.in",
      },
    ],
  },
};

export default function App() {
  const [animationStage, setAnimationStage] = useState<number>(0);
  const [isIntroComplete, setIsIntroComplete] = useState<boolean>(false);
  const [selectedLanguage, setSelectedLanguage] = useState<Language>(() => {
    try {
      const saved = localStorage.getItem("benefitbridge_lang");
      return saved === "hi" ? "hi" : "en";
    } catch {
      return "en";
    }
  });

  // Interactive states for Voice, Eligibility, and Document Doctor
  const [isRecording, setIsRecording] = useState<boolean>(false);
  const [showVoiceResult, setShowVoiceResult] = useState<boolean>(false);
  const [ageInput, setAgeInput] = useState<string>("65");
  const [incomeInput, setIncomeInput] = useState<string>("45000");
  const [eligibilityChecked, setEligibilityChecked] = useState<boolean>(false);
  const [nameAadhaar, setNameAadhaar] = useState<string>("Sunita Devi");
  const [nameBank, setNameBank] = useState<string>("Sunitha Devi");
  const [docChecked, setDocChecked] = useState<boolean>(false);

  const t = TRANSLATIONS[selectedLanguage];

  const handleLanguageChange = (lang: Language) => {
    setSelectedLanguage(lang);
    try {
      localStorage.setItem("benefitbridge_lang", lang);
    } catch {
      // Ignore storage errors in restricted iframes
    }
    document.documentElement.lang = lang;
  };

  useEffect(() => {
    document.documentElement.lang = selectedLanguage;

    const t1 = setTimeout(() => setAnimationStage(1), 150);
    const t2 = setTimeout(() => setAnimationStage(2), 800);
    const t3 = setTimeout(() => setAnimationStage(3), 1700);
    const t4 = setTimeout(() => {
      setAnimationStage(4);
      setTimeout(() => setIsIntroComplete(true), 600);
    }, 2800);

    return () => {
      clearTimeout(t1);
      clearTimeout(t2);
      clearTimeout(t3);
      clearTimeout(t4);
    };
  }, [selectedLanguage]);

  const skipIntro = () => {
    setAnimationStage(4);
    setTimeout(() => setIsIntroComplete(true), 150);
  };

  const toggleVoiceRecording = () => {
    if (!isRecording) {
      setIsRecording(true);
      setShowVoiceResult(false);
      setTimeout(() => {
        setIsRecording(false);
        setShowVoiceResult(true);
        setAgeInput("66");
        setIncomeInput("42000");
        setEligibilityChecked(true);
      }, 2200);
    } else {
      setIsRecording(false);
    }
  };

  const isEligible =
    Number(ageInput) >= 40 && Number(incomeInput) <= 250000;

  const isExactNameMatch =
    nameAadhaar.trim().toLowerCase() === nameBank.trim().toLowerCase();

  return (
    <div className="min-h-screen bg-[#FFFDF9] text-[#1C1917] font-sans relative overflow-x-hidden selection:bg-[#DC2626] selection:text-white">
      {/* Ambient Background Light Blobs for Glass Reflections */}
      <div className="fixed top-[-10%] left-[-5%] w-[520px] h-[520px] rounded-full bg-gradient-to-br from-[#FECACA]/45 via-[#FEE2E2]/35 to-transparent blur-[120px] pointer-events-none" />
      <div className="fixed top-[45%] right-[-10%] w-[580px] h-[580px] rounded-full bg-gradient-to-bl from-[#FEE2E2]/50 via-[#FED7AA]/30 to-transparent blur-[140px] pointer-events-none" />
      <div className="fixed bottom-[-10%] left-[20%] w-[500px] h-[500px] rounded-full bg-gradient-to-t from-[#FEE2E2]/30 via-transparent to-transparent blur-[130px] pointer-events-none" />

      {/* ---------------- 1. GLASS INTRO OVERLAY ---------------- */}
      {!isIntroComplete && (
        <div
          className={`fixed inset-0 z-50 flex flex-col items-center justify-center bg-[#FFFDF9]/85 backdrop-blur-2xl transition-all duration-700 ease-out ${
            animationStage === 4
              ? "opacity-0 scale-105 pointer-events-none"
              : "opacity-100 scale-100"
          }`}
        >
          {/* Central Frosted Glass Emblem */}
          <div className="relative flex items-center justify-center mb-8">
            <div
              className={`absolute -inset-6 rounded-full bg-gradient-to-r from-[#DC2626] to-[#EF4444] opacity-30 blur-2xl transition-all duration-1000 ${
                animationStage >= 1
                  ? "scale-125 opacity-40"
                  : "scale-75 opacity-0"
              }`}
            />
            <div
              className={`relative w-28 h-28 rounded-3xl bg-white/75 backdrop-blur-xl border border-white/90 shadow-[0_20px_50px_rgba(220,38,38,0.22)] flex items-center justify-center transition-all duration-700 ease-out ${
                animationStage >= 1
                  ? "scale-100 rotate-0 opacity-100"
                  : "scale-50 rotate-12 opacity-0"
              }`}
            >
              <div className="w-16 h-16 rounded-2xl bg-gradient-to-tr from-[#DC2626] to-[#EF4444] flex items-center justify-center shadow-lg shadow-red-600/30">
                <svg
                  className="w-9 h-9 text-white drop-shadow-md"
                  fill="none"
                  stroke="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="2.2"
                    d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
                  />
                </svg>
              </div>
            </div>
          </div>

          {/* Titles & Bilingual Subtitle */}
          <div className="text-center space-y-2.5 px-4 z-10">
            <h1
              className={`text-4xl md:text-5xl font-black tracking-tight text-[#991B1B] transition-all duration-700 ease-out ${
                animationStage >= 2
                  ? "translate-y-0 opacity-100"
                  : "translate-y-4 opacity-0"
              }`}
            >
              BenefitBridge
            </h1>
            <p
              className={`text-sm md:text-base font-semibold text-[#78716C] max-w-md transition-all duration-700 delay-100 ${
                animationStage >= 2
                  ? "translate-y-0 opacity-100"
                  : "translate-y-3 opacity-0"
              }`}
            >
              {t.brandTagline}
            </p>
          </div>

          {/* Frosted Status Capsule */}
          <div
            className={`mt-10 flex items-center gap-3 px-5 py-2.5 rounded-full bg-white/70 backdrop-blur-xl border border-white/80 shadow-[0_8px_32px_rgba(220,38,38,0.12)] transition-all duration-500 z-10 ${
              animationStage >= 3
                ? "opacity-100 scale-100"
                : "opacity-0 scale-95"
            }`}
          >
            <span className="w-2.5 h-2.5 rounded-full bg-[#16A34A] animate-ping" />
            <span className="text-xs font-bold tracking-wide text-[#7F1D1D]">
              {t.dpiReady}
            </span>
          </div>

          {/* Skip Intro */}
          <button
            type="button"
            onClick={skipIntro}
            className="absolute bottom-8 right-8 text-xs text-[#A8A29E] hover:text-[#DC2626] transition-colors uppercase tracking-widest font-black cursor-pointer"
          >
            {t.skipIntro}
          </button>
        </div>
      )}

      {/* ---------------- 2. MAIN GLASS DASHBOARD ---------------- */}
      <div
        className={`transition-opacity duration-700 ${
          isIntroComplete ? "opacity-100" : "opacity-0"
        }`}
      >
        {/* Floating Glass Navigation Header */}
        <header className="sticky top-4 z-40 max-w-7xl mx-auto px-4 sm:px-6 mb-4">
          <div className="rounded-2xl bg-white/75 backdrop-blur-xl border border-white/90 shadow-[0_8px_30px_rgb(0,0,0,0.04)] px-4 sm:px-6 py-3.5 flex flex-wrap items-center justify-between gap-3">
            <div className="flex items-center gap-3">
              <div className="w-10 h-10 rounded-xl bg-gradient-to-tr from-[#DC2626] to-[#EF4444] flex items-center justify-center shadow-md shadow-red-600/25">
                <span className="text-white font-black text-xl">B</span>
              </div>
              <div>
                <span className="font-black text-xl text-[#991B1B] tracking-tight">
                  BenefitBridge
                </span>
                <span className="hidden md:inline-block ml-3 px-3 py-0.5 text-[11px] font-bold bg-[#DC2626]/10 text-[#DC2626] border border-[#DC2626]/20 rounded-full">
                  {t.liveGateway}
                </span>
              </div>
            </div>

            {/* Quick Section Anchor Links */}
            <nav className="hidden lg:flex items-center gap-6 text-xs font-bold text-[#78716C]">
              <a href="#overview" className="hover:text-[#DC2626] transition-colors">
                {t.navOverview}
              </a>
              <a href="#schemes" className="hover:text-[#DC2626] transition-colors">
                {t.navSchemes}
              </a>
              <a href="#interactive-tools" className="hover:text-[#DC2626] transition-colors">
                {t.navEligibility}
              </a>
              <a href="#interactive-tools" className="hover:text-[#DC2626] transition-colors">
                {t.navDocDoctor}
              </a>
            </nav>

            <div className="flex items-center gap-2.5">
              {/* Frosted Language Switcher */}
              <div className="bg-[#FFFDF9]/90 backdrop-blur-md border border-[#F5EBE1] p-1 rounded-xl flex text-xs font-bold shadow-inner">
                <button
                  type="button"
                  onClick={() => handleLanguageChange("en")}
                  className={`px-3.5 py-1.5 rounded-lg transition-all cursor-pointer ${
                    selectedLanguage === "en"
                      ? "bg-[#DC2626] text-white shadow-sm"
                      : "text-[#78716C] hover:text-[#1C1917]"
                  }`}
                >
                  EN
                </button>
                <button
                  type="button"
                  onClick={() => handleLanguageChange("hi")}
                  className={`px-3.5 py-1.5 rounded-lg transition-all cursor-pointer ${
                    selectedLanguage === "hi"
                      ? "bg-[#DC2626] text-white shadow-sm"
                      : "text-[#78716C] hover:text-[#1C1917]"
                  }`}
                >
                  हिंदी
                </button>
              </div>

              <a
                href={getPortalUrl("/docs")}
                target="_blank"
                rel="noreferrer"
                className="text-xs bg-white/90 hover:bg-[#FEE2E2]/60 text-[#991B1B] px-3.5 py-2 rounded-xl border border-[#FEE2E2] shadow-sm font-bold transition-all"
              >
                {t.apiDocs}
              </a>
            </div>
          </div>
        </header>

        {/* Hero & Glass Content Container */}
        <main id="overview" className="max-w-7xl mx-auto px-4 sm:px-6 py-6 space-y-12">
          <div className="text-center max-w-3xl mx-auto space-y-4">
            <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/80 backdrop-blur-lg border border-[#FEE2E2] text-[#DC2626] text-xs font-extrabold tracking-wide shadow-sm">
              <span>{t.heroBadge}</span>
            </div>
            <h2 className="text-3xl md:text-5xl font-black text-[#1C1917] tracking-tight leading-tight">
              {t.heroTitle}
            </h2>
            <p className="text-[#78716C] text-base md:text-lg font-medium leading-relaxed">
              {t.heroSubtitle}
            </p>
          </div>

          {/* 3 Core Interactive Glassmorphic Cards */}
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
            {/* Card 1: DigiLocker Direct Apply */}
            <div className="relative group p-7 rounded-3xl bg-white/65 backdrop-blur-xl border border-white/90 hover:border-[#DC2626]/50 shadow-[0_12px_40px_rgba(220,38,38,0.06)] hover:shadow-[0_20px_50px_rgba(220,38,38,0.14)] transition-all flex flex-col justify-between overflow-hidden">
              <div className="absolute top-0 right-0 w-32 h-32 bg-[#FEE2E2]/40 rounded-full blur-2xl pointer-events-none group-hover:scale-125 transition-transform" />
              <div>
                <div className="w-12 h-12 rounded-2xl bg-white/90 border border-[#FEE2E2] flex items-center justify-center text-[#DC2626] mb-5 shadow-sm">
                  <svg className="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M19.35 10.04C18.67 6.59 15.64 4 12 4 9.11 4 6.6 5.64 5.35 8.04 2.34 8.36 0 10.91 0 14c0 3.31 2.69 6 6 6h13c2.76 0 5-2.24 5-5 0-2.64-2.05-4.78-4.65-4.96zM14 13v4h-4v-4H7l5-5 5 5h-3z" />
                  </svg>
                </div>
                <h3 className="text-xl font-extrabold text-[#1C1917] mb-2">
                  {t.card1Title}
                </h3>
                <p className="text-xs text-[#78716C] mb-6 leading-relaxed font-medium">
                  {t.card1Desc}
                </p>
              </div>
              <a
                href={getDigiLockerUrl("ignoaps")}
                className="w-full inline-flex items-center justify-center gap-2 px-5 py-3.5 rounded-2xl bg-gradient-to-r from-[#DC2626] to-[#B91C1C] hover:from-[#B91C1C] hover:to-[#991B1B] text-white text-xs font-bold transition-all shadow-lg shadow-red-600/30 active:scale-[0.98]"
              >
                {t.card1Btn}
              </a>
            </div>

            {/* Card 2: Voice Input */}
            <div className="relative group p-7 rounded-3xl bg-white/65 backdrop-blur-xl border border-white/90 hover:border-[#DC2626]/40 shadow-[0_12px_40px_rgba(0,0,0,0.03)] hover:shadow-[0_20px_50px_rgba(220,38,38,0.08)] transition-all flex flex-col justify-between overflow-hidden">
              <div className="absolute top-0 right-0 w-32 h-32 bg-[#FFEDD5]/40 rounded-full blur-2xl pointer-events-none group-hover:scale-125 transition-transform" />
              <div>
                <div className="w-12 h-12 rounded-2xl bg-white/90 border border-[#FEE2E2] flex items-center justify-center text-[#BE123C] mb-5 shadow-sm">
                  <svg
                    className="w-6 h-6"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2.2"
                      d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z"
                    />
                  </svg>
                </div>
                <h3 className="text-xl font-extrabold text-[#1C1917] mb-2">
                  {t.card2Title}
                </h3>
                <p className="text-xs text-[#78716C] mb-4 leading-relaxed font-medium">
                  {t.card2Desc}
                </p>
                {isRecording && (
                  <div className="mb-4 p-3 rounded-xl bg-[#FEE2E2]/70 border border-[#FECACA] text-[11px] font-bold text-[#991B1B] flex items-center gap-2 animate-pulse">
                    <span className="w-2 h-2 rounded-full bg-[#DC2626]" />
                    {t.card2Listening}
                  </div>
                )}
                {showVoiceResult && (
                  <div className="mb-4 p-3 rounded-xl bg-white/90 border border-[#F5EBE1] text-[11px] italic text-[#57534E]">
                    {t.card2SampleTranscript}
                  </div>
                )}
              </div>
              <button
                type="button"
                onClick={toggleVoiceRecording}
                className={`w-full inline-flex items-center justify-center gap-2 px-5 py-3.5 rounded-2xl text-xs font-bold border transition-all cursor-pointer shadow-sm active:scale-[0.98] ${
                  isRecording
                    ? "bg-[#DC2626] text-white border-[#DC2626]"
                    : "bg-white/90 hover:bg-[#FEE2E2]/60 text-[#991B1B] border-[#FEE2E2]"
                }`}
              >
                {isRecording ? t.card2StopBtn : t.card2Btn}
              </button>
            </div>

            {/* Card 3: Document Doctor */}
            <div className="relative group p-7 rounded-3xl bg-white/65 backdrop-blur-xl border border-white/90 hover:border-[#DC2626]/40 shadow-[0_12px_40px_rgba(0,0,0,0.03)] hover:shadow-[0_20px_50px_rgba(220,38,38,0.08)] transition-all flex flex-col justify-between overflow-hidden">
              <div className="absolute top-0 right-0 w-32 h-32 bg-[#DCFCE7]/40 rounded-full blur-2xl pointer-events-none group-hover:scale-125 transition-transform" />
              <div>
                <div className="w-12 h-12 rounded-2xl bg-white/90 border border-[#FEE2E2] flex items-center justify-center text-[#15803D] mb-5 shadow-sm">
                  <svg
                    className="w-6 h-6"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2.2"
                      d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
                    />
                  </svg>
                </div>
                <h3 className="text-xl font-extrabold text-[#1C1917] mb-2">
                  {t.card3Title}
                </h3>
                <p className="text-xs text-[#78716C] mb-6 leading-relaxed font-medium">
                  {t.card3Desc}
                </p>
              </div>
              <a
                href="#interactive-tools"
                onClick={() => setDocChecked(true)}
                className="w-full inline-flex items-center justify-center gap-2 px-5 py-3.5 rounded-2xl bg-white/90 hover:bg-[#FEE2E2]/60 text-[#991B1B] text-xs font-bold border border-[#FEE2E2] transition-all cursor-pointer shadow-sm active:scale-[0.98]"
              >
                {t.card3Btn}
              </a>
            </div>
          </div>

          {/* ---------------- 3. INTERACTIVE ELIGIBILITY & DOCUMENT DOCTOR WORKBENCH ---------------- */}
          <section
            id="interactive-tools"
            className="grid grid-cols-1 lg:grid-cols-2 gap-6 pt-2"
          >
            {/* Tool A: Instant Statutory Eligibility Pre-Screen */}
            <div className="p-7 rounded-3xl bg-white/70 backdrop-blur-xl border border-white/90 shadow-[0_12px_36px_rgba(0,0,0,0.03)] space-y-5">
              <h3 className="text-lg font-extrabold text-[#991B1B]">
                {t.eligibilityModalTitle}
              </h3>
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                  <label className="block text-xs font-bold text-[#78716C] mb-1.5">
                    {t.ageLabel}
                  </label>
                  <input
                    type="number"
                    value={ageInput}
                    onChange={(e) => setAgeInput(e.target.value)}
                    className="w-full px-4 py-2.5 rounded-xl bg-white border border-[#E7D9CC] text-sm font-bold text-[#1C1917] focus:outline-none focus:border-[#DC2626]"
                  />
                </div>
                <div>
                  <label className="block text-xs font-bold text-[#78716C] mb-1.5">
                    {t.incomeLabel}
                  </label>
                  <input
                    type="number"
                    value={incomeInput}
                    onChange={(e) => setIncomeInput(e.target.value)}
                    className="w-full px-4 py-2.5 rounded-xl bg-white border border-[#E7D9CC] text-sm font-bold text-[#1C1917] focus:outline-none focus:border-[#DC2626]"
                  />
                </div>
              </div>
              <button
                type="button"
                onClick={() => setEligibilityChecked(true)}
                className="px-5 py-2.5 rounded-xl bg-[#DC2626] hover:bg-[#B91C1C] text-white text-xs font-bold shadow-sm transition-all cursor-pointer"
              >
                {t.checkNowBtn}
              </button>

              {eligibilityChecked && (
                <div
                  className={`p-4 rounded-2xl text-xs font-bold leading-relaxed border ${
                    isEligible
                      ? "bg-[#F0FDF4] text-[#15803D] border-[#BBF7D0]"
                      : "bg-[#FFFBEB] text-[#B45309] border-[#FDE68A]"
                  }`}
                >
                  {isEligible ? t.eligibleMsg : t.notEligibleMsg}
                </div>
              )}
            </div>

            {/* Tool B: Document Doctor Phonetic Name Verifier */}
            <div className="p-7 rounded-3xl bg-white/70 backdrop-blur-xl border border-white/90 shadow-[0_12px_36px_rgba(0,0,0,0.03)] space-y-5">
              <h3 className="text-lg font-extrabold text-[#991B1B]">
                {t.docModalTitle}
              </h3>
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                  <label className="block text-xs font-bold text-[#78716C] mb-1.5">
                    {t.docNameAadhaarLabel}
                  </label>
                  <input
                    type="text"
                    value={nameAadhaar}
                    onChange={(e) => setNameAadhaar(e.target.value)}
                    className="w-full px-4 py-2.5 rounded-xl bg-white border border-[#E7D9CC] text-sm font-bold text-[#1C1917] focus:outline-none focus:border-[#DC2626]"
                  />
                </div>
                <div>
                  <label className="block text-xs font-bold text-[#78716C] mb-1.5">
                    {t.docNameBankLabel}
                  </label>
                  <input
                    type="text"
                    value={nameBank}
                    onChange={(e) => setNameBank(e.target.value)}
                    className="w-full px-4 py-2.5 rounded-xl bg-white border border-[#E7D9CC] text-sm font-bold text-[#1C1917] focus:outline-none focus:border-[#DC2626]"
                  />
                </div>
              </div>
              <button
                type="button"
                onClick={() => setDocChecked(true)}
                className="px-5 py-2.5 rounded-xl bg-[#DC2626] hover:bg-[#B91C1C] text-white text-xs font-bold shadow-sm transition-all cursor-pointer"
              >
                {t.verifyMatchBtn}
              </button>

              {docChecked && (
                <div
                  className={`p-4 rounded-2xl text-xs font-bold leading-relaxed border ${
                    isExactNameMatch
                      ? "bg-[#F0FDF4] text-[#15803D] border-[#BBF7D0]"
                      : "bg-[#FEF2F2] text-[#991B1B] border-[#FECACA]"
                  }`}
                >
                  {isExactNameMatch ? t.matchSuccess : t.matchWarning}
                </div>
              )}
            </div>
          </section>

          {/* ---------------- 4. REAL GOVERNMENT SCHEMES & PORTALS DIRECTORY ---------------- */}
          <section id="schemes" className="space-y-6 pt-2">
            <div className="space-y-2">
              <h2 className="text-2xl md:text-3xl font-black text-[#1C1917]">
                {t.schemesHeading}
              </h2>
              <p className="text-xs sm:text-sm text-[#78716C] font-medium">
                {t.schemesSubheading}
              </p>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
              {t.schemes.map((scheme) => (
                <div
                  key={scheme.id}
                  className="p-6 rounded-3xl bg-white/70 backdrop-blur-xl border border-white/90 hover:border-[#DC2626]/40 shadow-[0_8px_30px_rgba(0,0,0,0.03)] flex flex-col justify-between space-y-5 transition-all"
                >
                  <div className="space-y-3">
                    <div className="flex flex-wrap items-center justify-between gap-2">
                      <span className="px-3 py-1 rounded-full text-[11px] font-extrabold bg-[#FEE2E2] text-[#991B1B]">
                        {scheme.level}
                      </span>
                      <span className="px-3 py-1 rounded-full text-[11px] font-bold bg-[#F0FDF4] text-[#15803D] border border-[#BBF7D0]">
                        {scheme.slaDays} {t.slaBadgeSuffix}
                      </span>
                    </div>

                    <h3 className="text-lg font-extrabold text-[#1C1917]">
                      {scheme.title}
                    </h3>

                    <div className="text-xs space-y-1.5 text-[#57534E]">
                      <p>
                        <strong className="text-[#1C1917]">{t.ministryLabel}:</strong>{" "}
                        {scheme.ministry}
                      </p>
                      <p>
                        <strong className="text-[#1C1917]">{t.eligibilityLabel}:</strong>{" "}
                        {scheme.eligibilityText}
                      </p>
                      <p>
                        <strong className="text-[#1C1917]">{t.benefitLabel}:</strong>{" "}
                        <span className="text-[#15803D] font-bold">
                          {scheme.benefitAmount}
                        </span>
                      </p>
                      <p className="text-[11px] text-[#78716C] pt-1">
                        {scheme.charterClause}
                      </p>
                    </div>
                  </div>

                  <div className="flex flex-wrap items-center gap-3 pt-2">
                    <a
                      href={getDigiLockerUrl(scheme.id)}
                      className="flex-1 text-center px-4 py-2.5 rounded-xl bg-[#DC2626] hover:bg-[#B91C1C] text-white text-xs font-bold transition-all shadow-sm"
                    >
                      {t.applyDigiLockerBtn}
                    </a>
                    <a
                      href={scheme.portalUrl}
                      target="_blank"
                      rel="noreferrer"
                      className="px-4 py-2.5 rounded-xl bg-white hover:bg-[#FEE2E2]/50 text-[#991B1B] border border-[#FEE2E2] text-xs font-bold transition-all"
                    >
                      {t.visitPortalBtn}
                    </a>
                  </div>
                </div>
              ))}
            </div>
          </section>

          {/* Citizen Charter Status Guarantee Ribbon */}
          <div className="p-5 rounded-2xl bg-white/70 backdrop-blur-xl border border-white/90 shadow-[0_8px_30px_rgb(0,0,0,0.03)] flex flex-col sm:flex-row items-center justify-between gap-4 text-xs font-semibold text-[#78716C]">
            <div className="flex items-center gap-3">
              <span className="w-2.5 h-2.5 rounded-full bg-[#16A34A] animate-pulse" />
              <span>
                {t.slaPrefix}{" "}
                <strong className="text-[#1C1917]">{t.slaStrong}</strong>
              </span>
            </div>
            <span className="text-[#991B1B] font-extrabold tracking-wide">
              {t.slaRight}
            </span>
          </div>
        </main>
      </div>
    </div>
  );
}
