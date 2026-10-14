import React, { useState, useEffect, useRef } from "react";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import Lenis from "lenis";
import Section1Intro from "./components/Section1Intro";
import Section2Statement from "./components/Section2Statement";
import Section3Focus from "./components/Section3Focus";
import Section4JourneyTickets from "./components/Section4JourneyTickets";
import Section5WhoDecides from "./components/Section5WhoDecides";
import Section6Closing from "./components/Section6Closing";
import { getPortalUrl, getDigiLockerUrl, getApiDocsUrl } from "./lib/urls";

gsap.registerPlugin(ScrollTrigger);

export type Language = "en" | "hi";

export interface SchemeInfo {
  id: string;
  category: "all" | "central" | "state" | "scholarship";
  ministry: { en: string; hi: string };
  title: { en: string; hi: string };
  description: { en: string; hi: string };
  criteria: { en: string; hi: string };
  sla: { en: string; hi: string };
  charter: { en: string; hi: string };
  portalUrl: string;
  badge: { en: string; hi: string };
}

export interface TrackedApp {
  id: string;
  applicant: string;
  scheme: { en: string; hi: string };
  status: "Submitted" | "Under Review" | "Verified" | "Dispatched";
  slaDaysTotal: number;
  slaDaysRemaining: number;
  targetDate: string;
  dbtStatus: "Linked" | "Pending" | "Variation Detected";
}

export interface TranslationSchema {
  splash: {
    subtitle: string;
    dpiBadge: string;
    skipBtn: string;
    replayBtn: string;
  };
  nav: {
    brand: string;
    taglineDesktop: string;
    taglineMobile: string;
    liveGatewayBadge: string;
    tabDashboard: string;
    tabEligibility: string;
    tabSchemes: string;
    tabDocDoctor: string;
    tabTrack: string;
    apiDocsBtn: string;
    livePortalBtn: string;
  };
  hero: {
    badge: string;
    headline: string;
    subtitle: string;
    stat1Val: string;
    stat1Label: string;
    stat2Val: string;
    stat2Label: string;
    stat3Val: string;
    stat3Label: string;
    stat4Val: string;
    stat4Label: string;
  };
  cards: {
    digilocker: {
      badge: string;
      title: string;
      description: string;
      cta: string;
    };
    voice: {
      badge: string;
      title: string;
      description: string;
      cta: string;
    };
    documentDoctor: {
      badge: string;
      title: string;
      description: string;
      cta: string;
    };
  };
  schemesSection: {
    sectionBadge: string;
    title: string;
    subtitle: string;
    filterAll: string;
    filterCentral: string;
    filterState: string;
    filterScholarship: string;
    criteriaLabel: string;
    slaLabel: string;
    charterLabel: string;
    visitPortalBtn: string;
  };
  eligibilitySection: {
    sectionBadge: string;
    title: string;
    subtitle: string;
    ageLabel: string;
    agePlaceholder: string;
    incomeLabel: string;
    incomePlaceholder: string;
    categoryLabel: string;
    statusLabel: string;
    statusOptions: {
      senior: string;
      widow: string;
      student: string;
      farmer: string;
      general: string;
    };
    stateLabel: string;
    stateOptions: {
      all: string;
      delhi: string;
      up: string;
      bihar: string;
      maharashtra: string;
    };
    evaluateBtn: string;
    resultEligibleCount: string;
    resultEligibleBadge: string;
    resultNone: string;
  };
  trackerSection: {
    sectionBadge: string;
    title: string;
    subtitle: string;
    placeholder: string;
    trackBtn: string;
    quickSampleTokens: string;
    statusLabel: string;
    targetDateLabel: string;
    slaProgressLabel: string;
    escalationReady: string;
    dbtStatusLabel: string;
  };
  slaRibbon: {
    actTitle: string;
    slaGuarantee: string;
    escalationNotice: string;
  };
  modals: {
    voiceTitle: string;
    voiceSubtitle: string;
    voiceIdle: string;
    voiceRecording: string;
    voiceSuccess: string;
    voiceSamplePrompt: string;
    voiceSampleHindi: string;
    voiceSampleEnglish: string;
    voiceStartBtn: string;
    voiceStopBtn: string;
    voiceClose: string;
    scannerTitle: string;
    scannerSubtitle: string;
    scannerCard1Title: string;
    scannerCard2Title: string;
    scannerDetectedMismatch: string;
    scannerAdvice: string;
    scannerLaunchPortal: string;
    scannerClose: string;
  };
}

export const SCHEMES_DATABASE: SchemeInfo[] = [
  {
    id: "old_age_pension",
    category: "central",
    ministry: {
      en: "Ministry of Rural Development, Govt of India",
      hi: "ग्रामीण विकास मंत्रालय, भारत सरकार",
    },
    title: {
      en: "Indira Gandhi National Old Age Pension Scheme (IGNOAPS)",
      hi: "इंदिरा गांधी राष्ट्रीय वृद्धावस्था पेंशन योजना (IGNOAPS)",
    },
    description: {
      en: "Direct statutory monthly pension transferred via Direct Benefit Transfer (DBT) to senior citizens living below the poverty line.",
      hi: "गरीबी रेखा से नीचे जीवनयापन करने वाले वृद्ध नागरिकों को प्रत्यक्ष लाभ अंतरण (DBT) के माध्यम से मासिक पेंशन सहायता।",
    },
    criteria: {
      en: "Age 60 years or above, BPL certified household, active bank passbook",
      hi: "आयु ६० वर्ष या अधिक, बीपीएल प्रमाणित परिवार, सक्रिय बैंक पासबुक",
    },
    sla: {
      en: "45-Day Statutory SLA",
      hi: "४५-दिवसीय वैधानिक समय-सीमा",
    },
    charter: {
      en: "NSAP Citizen's Charter 2026 & State Public Services Act",
      hi: "एनएसएपी नागरिक अधिकार पत्र २०२६ एवं राज्य लोक सेवा अधिनियम",
    },
    portalUrl: "https://nsap.dord.gov.in",
    badge: {
      en: "Central NSAP",
      hi: "केंद्रीय एनएसएपी",
    },
  },
  {
    id: "widow_pension",
    category: "central",
    ministry: {
      en: "Ministry of Rural Development, Govt of India",
      hi: "ग्रामीण विकास मंत्रालय, भारत सरकार",
    },
    title: {
      en: "Indira Gandhi National Widow Pension Scheme (IGNWPS)",
      hi: "इंदिरा गांधी राष्ट्रीय विधवा पेंशन योजना (IGNWPS)",
    },
    description: {
      en: "Statutory social welfare pension assistance for widows from vulnerable households with zero processing delay.",
      hi: "आर्थिक रूप से संवेदनशील परिवारों की विधवा महिलाओं के लिए बिना किसी विलंब के प्रत्यक्ष वैधानिक मासिक पेंशन सहायता।",
    },
    criteria: {
      en: "Female applicant, Age 40-79 years, Widow status, BPL household",
      hi: "महिला आवेदक, आयु ४०-७९ वर्ष, विधवा स्थिति, बीपीएल परिवार",
    },
    sla: {
      en: "30-Day Mandatory Statutory SLA",
      hi: "३०-दिवसीय अनिवार्य वैधानिक समय-सीमा",
    },
    charter: {
      en: "Citizen Charter Clause 4.2 (Statutory Redressal)",
      hi: "नागरिक अधिकार पत्र क्लॉज ४.२ (वैधानिक समाधान)",
    },
    portalUrl: "https://nsap.dord.gov.in",
    badge: {
      en: "Direct Benefit Transfer",
      hi: "प्रत्यक्ष लाभ अंतरण",
    },
  },
  {
    id: "family_benefit",
    category: "state",
    ministry: {
      en: "Ministry of Rural Development & State Social Welfare Departments",
      hi: "ग्रामीण विकास मंत्रालय एवं राज्य समाज कल्याण विभाग",
    },
    title: {
      en: "National Family Benefit Scheme (NFBS)",
      hi: "राष्ट्रीय परिवार लाभ योजना (NFBS)",
    },
    description: {
      en: "One-time statutory lump-sum financial assistance of ₹20,000 provided to the bereaved BPL family upon death of the primary breadwinner.",
      hi: "परिवार के मुख्य कमाऊ मुखिया की मृत्यु पर शोक संतप्त बीपीएल परिवार को ₹२०,००० की एकमुश्त वैधानिक आर्थिक सहायता।",
    },
    criteria: {
      en: "Death of primary breadwinner aged 18-59 years, BPL certified household",
      hi: "१८-५९ आयु वर्ग के मुख्य अर्जक की मृत्यु, बीपीएल प्रमाणित परिवार",
    },
    sla: {
      en: "30-Day Statutory Disposal",
      hi: "३०-दिवसीय वैधानिक निस्तारण",
    },
    charter: {
      en: "State Public Services Delivery Act Sec 4",
      hi: "राज्य लोक सेवा प्रदायगी अधिनियम धारा ४",
    },
    portalUrl: "https://nsap.dord.gov.in",
    badge: {
      en: "Lump-Sum Grant",
      hi: "एकमुश्त अनुदान",
    },
  },
  {
    id: "scholarship",
    category: "scholarship",
    ministry: {
      en: "Ministry of Social Justice & Empowerment / Tribal Affairs",
      hi: "सामाजिक न्याय एवं अधिकारिता / जनजातीय कार्य मंत्रालय",
    },
    title: {
      en: "Post-Matric Scholarship for SC/ST/OBC Students",
      hi: "अनुसूचित जाति/जनजाति/अन्य पिछड़ा वर्ग छात्रवृत्ति (Post-Matric)",
    },
    description: {
      en: "Complete educational tuition waiver and monthly maintenance allowance disbursed directly into verified student bank accounts.",
      hi: "उच्च शिक्षा को सुगम बनाने हेतु ट्यूशन फीस प्रतिपूर्ति एवं मासिक अनुरक्षण भत्ता सीधे छात्र के बैंक खाते में।",
    },
    criteria: {
      en: "SC/ST/OBC category, Enrolled in recognized course, Family income ≤ ₹2.5 Lakh/year",
      hi: "अ.जा./अ.ज.जा./ओबीसी वर्ग, मान्यता प्राप्त पाठ्यक्रम में अध्ययनरत, पारिवारिक आय ≤ ₹२.५ लाख/वर्ष",
    },
    sla: {
      en: "21-Day Institutional Verification SLA",
      hi: "२१-दिवसीय संस्थागत सत्यापन समय-सीमा",
    },
    charter: {
      en: "National Scholarship Portal (NSP) Citizen Charter",
      hi: "राष्ट्रीय छात्रवृत्ति पोर्टल (NSP) नागरिक अधिकार पत्र",
    },
    portalUrl: "https://scholarships.gov.in",
    badge: {
      en: "National Scholarship Portal",
      hi: "राष्ट्रीय छात्रवृत्ति पोर्टल",
    },
  },
];

export const TRANSLATIONS: Record<Language, TranslationSchema> = {
  en: {
    splash: {
      subtitle: "Direct Public Digital Infrastructure (DPI) & Statutory Welfare Gateway for India",
      dpiBadge: "NIC / API Setu / DigiLocker Connected",
      skipBtn: "Skip Intro →",
      replayBtn: "Replay Cinematic Intro ↻",
    },
    nav: {
      brand: "BenefitBridge",
      taglineDesktop: "Citizen Welfare & Statutory Rights Platform",
      taglineMobile: "Welfare Gateway",
      liveGatewayBadge: "Live Gateway Active",
      tabDashboard: "Dashboard",
      tabEligibility: "Check Eligibility",
      tabSchemes: "Schemes Directory",
      tabDocDoctor: "Document Doctor",
      tabTrack: "Track Application",
      apiDocsBtn: "API Docs",
      livePortalBtn: "Live Portal",
    },
    hero: {
      badge: "National Civic Gateway • Statutory Rights & Public Service Guarantee Act 2026",
      headline: "India's Direct Welfare & Statutory Benefit Navigator",
      subtitle:
        "Pre-screen scheme eligibility, prevent bank DBT rejections through phonetic spelling analysis, and apply directly via DigiLocker with guaranteed 30-day Citizen Charter statutory disposal.",
      stat1Val: "100%",
      stat1Label: "Paperless DigiLocker OIDC",
      stat2Val: "30 Days",
      stat2Label: "Mandatory Statutory SLA",
      stat3Val: "95%+",
      stat3Label: "DBT Name Mismatch Prevention",
      stat4Val: "Zero",
      stat4Label: "PII / Aadhaar Storage",
    },
    cards: {
      digilocker: {
        badge: "API Setu v2.0 Partner",
        title: "DigiLocker Direct Apply",
        description:
          "Connect government-verified DigiLocker credentials. Pull authentic Ration Cards and Income Certificates automatically with zero manual upload friction.",
        cta: "Connect DigiLocker (One-Click Apply)",
      },
      voice: {
        badge: "Bilingual Whisper AI",
        title: "Voice Assistance (हिंदी / EN)",
        description:
          "Speak age, gender, occupation, and family status naturally. Powered by bilingual Whisper speech recognition to automatically parse and populate scheme criteria.",
        cta: "Bolein aur Aavedan Karein / Speak to Apply",
      },
      documentDoctor: {
        badge: "DBT / PFMS Pre-Verification",
        title: "Document Doctor (Mismatch)",
        description:
          "Detects critical Indian spelling differences (e.g., 'Sunita Devi vs Sunitha Devi', 'Choudhary vs Chaudhary') across Ration Cards and Bank Passbooks before submission to prevent Direct Benefit Transfer failure.",
        cta: "Scan & Resolve Name Mismatches",
      },
    },
    schemesSection: {
      sectionBadge: "Real-Time Civic Integration",
      title: "Live Government Schemes & Portals Directory",
      subtitle:
        "Verified real-time portal integration across Central NSAP, State Social Welfare, and National Scholarship Portals with statutory Citizen Charter clauses.",
      filterAll: "All Schemes (4)",
      filterCentral: "Central NSAP",
      filterState: "State Welfare",
      filterScholarship: "Scholarships",
      criteriaLabel: "Eligibility Criteria",
      slaLabel: "Statutory SLA",
      charterLabel: "Citizen Charter Clause",
      visitPortalBtn: "Official Portal",
    },
    eligibilitySection: {
      sectionBadge: "Deterministic Rules Engine",
      title: "Eligibility Pre-Screening & Citizen Calculator",
      subtitle:
        "Enter basic household details to evaluate statutory scheme qualification instantly with zero data retention.",
      ageLabel: "Applicant Age (Years)",
      agePlaceholder: "e.g. 65",
      incomeLabel: "Annual Household Income (₹ INR)",
      incomePlaceholder: "e.g. 120000",
      categoryLabel: "Social Category",
      statusLabel: "Applicant Profile / Status",
      statusOptions: {
        senior: "Senior Citizen (Age 60+)",
        widow: "Widow (BPL Household)",
        student: "Student (Higher Education)",
        farmer: "Small / Marginal Farmer",
        general: "General Citizen",
      },
      stateLabel: "State / UT",
      stateOptions: {
        all: "All-India (National)",
        delhi: "NCT of Delhi",
        up: "Uttar Pradesh",
        bihar: "Bihar",
        maharashtra: "Maharashtra",
      },
      evaluateBtn: "Evaluate Scheme Qualification ⚡",
      resultEligibleCount: "Qualified Schemes Found",
      resultEligibleBadge: "Statutory Match Confirmed",
      resultNone: "No direct schemes matched with the entered parameters. Please review your income or age threshold.",
    },
    trackerSection: {
      sectionBadge: "Citizen Charter Enforcement",
      title: "Statutory SLA & Application Status Tracker",
      subtitle:
        "Translate opaque government status codes into transparent milestones and statutory disposal countdowns.",
      placeholder: "Enter Application Token (e.g. APP-82403435 or APP-SUNITA-ACTIVE-01)",
      trackBtn: "Track Status",
      quickSampleTokens: "Quick Test Tokens:",
      statusLabel: "Current Stage",
      targetDateLabel: "Statutory SLA Target Date",
      slaProgressLabel: "Statutory 30-Day Window Progress",
      escalationReady: "CPGRAMS Legal Escalator Ready",
      dbtStatusLabel: "DBT Account Status",
    },
    slaRibbon: {
      actTitle: "State Right to Public Services Act:",
      slaGuarantee: "30-Day Mandatory Statutory SLA",
      escalationNotice:
        "Automatic CPGRAMS & State CM Helpline legal petition triggered if statutory government deadlines lapse",
    },
    modals: {
      voiceTitle: "Bilingual Voice Assistance",
      voiceSubtitle: "Whisper AI speech recognition in Hindi & English",
      voiceIdle: "Ready to listen. Click 'Start Voice Intake' below.",
      voiceRecording: "Microphone Active • Listening in Hindi & English...",
      voiceSuccess: "Voice details processed successfully! Extracted: Widow Pension criteria matched.",
      voiceSamplePrompt:
        "Speak naturally. For example: 'Main Sunita Devi hoon, umar 65 varsh, mujhe widow pension chahiye' or 'My annual income is 1.2 lakh, student scholarship'.",
      voiceSampleHindi: "हिंदी उदाहरण: 'मेरी उम्र 65 वर्ष है, मैं विधवा पेंशन के लिए आवेदन करना चाहती हूँ।'",
      voiceSampleEnglish: "English Sample: 'I am Amit Kumar, 20-year-old student applying for scholarship.'",
      voiceStartBtn: "Start Voice Intake 🎙",
      voiceStopBtn: "Analyze Speech ⚡",
      voiceClose: "Close Window",
      scannerTitle: "Document Doctor & Phonetic Matcher",
      scannerSubtitle: "In-memory Indian name & DBT account validator",
      scannerCard1Title: "Aadhaar / Ration Card Name",
      scannerCard2Title: "Bank Passbook Account Name",
      scannerDetectedMismatch: "95% Phonetic Match: 'Sunita Devi' vs 'Sunitha Devi' (Difference: 'th' vs 't')",
      scannerAdvice:
        "BenefitBridge does NOT reject your application. Resolving this spelling difference now prevents Direct Benefit Transfer (DBT) rejection by the bank.",
      scannerLaunchPortal: "Launch Scanner in Live Portal ↗",
      scannerClose: "Close",
    },
  },
  hi: {
    splash: {
      subtitle: "भारत का प्रत्यक्ष डिजिटल सार्वजनिक अवसंरचना (DPI) एवं वैधानिक कल्याण गेटवे",
      dpiBadge: "एनआईसी / एपीआई सेतु / डिजीलॉकर कनेक्टेड",
      skipBtn: "सीधे पोर्टल पर जाएं →",
      replayBtn: "सिनेमैटिक इंट्रो पुनः देखें ↻",
    },
    nav: {
      brand: "बेनिफ़िट-ब्रिज",
      taglineDesktop: "नागरिक जन-कल्याण एवं अधिकार मंच",
      taglineMobile: "कल्याण गेटवे",
      liveGatewayBadge: "लाइव गेटवे सक्रिय",
      tabDashboard: "डैशबोर्ड",
      tabEligibility: "पात्रता जांचें",
      tabSchemes: "योजना निर्देशिका",
      tabDocDoctor: "दस्तावेज़ डॉक्टर",
      tabTrack: "आवेदन ट्रैक करें",
      apiDocsBtn: "एपीआई दस्तावेज़",
      livePortalBtn: "लाइव पोर्टल",
    },
    hero: {
      badge: "राष्ट्रीय नागरिक गेटवे • लोक सेवा गारंटी एवं नागरिक अधिकार पत्र अधिनियम २०२६",
      headline: "भारत का प्रत्यक्ष जन-कल्याण एवं वैधानिक लाभ नेविगेटर",
      subtitle:
        "योजना पात्रता की पूर्व-जांच करें, ध्वन्यात्मक वर्तनी विश्लेषण से बैंक डीबीटी विफलता रोकें, और नागरिक अधिकार पत्र के ३०-दिवसीय वैधानिक निपटान के साथ डिजीलॉकर से सीधे आवेदन करें।",
      stat1Val: "१००%",
      stat1Label: "पेपरलेस डिजीलॉकर OIDC",
      stat2Val: "३० दिन",
      stat2Label: "अनिवार्य वैधानिक समय-सीमा",
      stat3Val: "९५%+",
      stat3Label: "डीबीटी नाम विसंगति रोकथाम",
      stat4Val: "शून्य",
      stat4Label: "आधार डेटा भंडारण शून्य",
    },
    cards: {
      digilocker: {
        badge: "एपीआई सेतु v2.0 अधिकृत",
        title: "डिजीलॉकर प्रत्यक्ष आवेदन",
        description:
          "सरकारी डिजीलॉकर क्रेडेंशियल्स से जुड़ें। बिना किसी मैन्युअल अपलोड के स्वतः प्रामाणिक राशन कार्ड और आय प्रमाण पत्र प्राप्त करें।",
        cta: "डिजीलॉकर से आवेदन करें (वन-क्लिक)",
      },
      voice: {
        badge: "द्विभाषी व्हिस्पर एआई",
        title: "वॉइस सहायता (हिंदी / English)",
        description:
          "अपनी उम्र, लिंग, पेशा और परिवार की स्थिति स्वाभाविक रूप से बोलें। द्विभाषी व्हिस्पर तकनीक द्वारा योजना आवश्यकताओं की स्वतः पूर्ति की जाती है।",
        cta: "बोलें और आवेदन करें / Speak to Apply",
      },
      documentDoctor: {
        badge: "डीबीटी / पीएफएमएस पूर्व-सत्यापन",
        title: "दस्तावेज़ डॉक्टर (नाम वर्तनी मिलान)",
        description:
          "राशन कार्ड और बैंक पासबुक में 'सुनीता देवी बनाम सुनीथा देवी', 'चौधरी बनाम चौधरी' जैसी वर्तनी विसंगतियों को आवेदन से पूर्व पहचानकर डीबीटी बैंक विफलता को रोकता है।",
        cta: "नाम विसंगति जांचें एवं सुधारें",
      },
    },
    schemesSection: {
      sectionBadge: "वास्तविक समय नागरिक एकीकरण",
      title: "सक्रिय सरकारी जन-कल्याण योजना निर्देशिका",
      subtitle:
        "केंद्रीय एनएसएपी (NSAP), राज्य समाज कल्याण और राष्ट्रीय छात्रवृत्ति पोर्टल से सत्यापित एवं वैधानिक नागरिक अधिकार पत्र से संरक्षित योजनाएं।",
      filterAll: "सभी योजनाएं (4)",
      filterCentral: "केंद्रीय एनएसएपी",
      filterState: "राज्य समाज कल्याण",
      filterScholarship: "छात्रवृत्ति",
      criteriaLabel: "पात्रता मापदंड",
      slaLabel: "वैधानिक समय-सीमा",
      charterLabel: "नागरिक अधिकार पत्र क्लॉज",
      visitPortalBtn: "आधिकारिक पोर्टल",
    },
    eligibilitySection: {
      sectionBadge: "स्वचालित पात्रता कैलकुलेटर",
      title: "पात्रता पूर्व-जांच एवं नागरिक कैलकुलेटर",
      subtitle:
        "बिना किसी डेटा भंडारण के, तुरंत अपनी पारिवारिक जानकारी दर्ज करें और अपनी योजना पात्रता जानें।",
      ageLabel: "आवेदक की आयु (वर्ष)",
      agePlaceholder: "उदा. 65",
      incomeLabel: "पारिवारिक वार्षिक आय (₹)",
      incomePlaceholder: "उदा. 120000",
      categoryLabel: "सामाजिक वर्ग",
      statusLabel: "आवेदक की स्थिति / प्रोफाइल",
      statusOptions: {
        senior: "वरिष्ठ नागरिक (आयु ६०+ वर्ष)",
        widow: "विधवा (बीपीएल परिवार)",
        student: "विद्यार्थी (उच्च शिक्षा)",
        farmer: "लघु / सीमांत किसान",
        general: "सामान्य नागरिक",
      },
      stateLabel: "राज्य / केंद्र शासित प्रदेश",
      stateOptions: {
        all: "अखिल भारतीय (राष्ट्रीय)",
        delhi: "राष्ट्रीय राजधानी क्षेत्र दिल्ली",
        up: "उत्तर प्रदेश",
        bihar: "बिहार",
        maharashtra: "महाराष्ट्र",
      },
      evaluateBtn: "योजना पात्रता की जांच करें ⚡",
      resultEligibleCount: "पात्र योजनाएं पाई गईं",
      resultEligibleBadge: "वैधानिक मिलान सत्यापित",
      resultNone: "दर्ज विवरण के अनुसार कोई प्रत्यक्ष योजना नहीं मिली। कृपया अपनी आय या आयु सीमा की पुनः जांच करें।",
    },
    trackerSection: {
      sectionBadge: "नागरिक अधिकार पत्र क्रियान्वयन",
      title: "वैधानिक समय-सीमा (SLA) एवं आवेदन ट्रैकर",
      subtitle:
        "सरकारी जटिल कोड्स को पारदर्शी चरणों और वैधानिक निवारण उल्टी गिनती में बदलें।",
      placeholder: "टोकन दर्ज करें (उदा. APP-82403435 या APP-SUNITA-ACTIVE-01)",
      trackBtn: "स्थिति जांचें",
      quickSampleTokens: "त्वरित परीक्षण टोकन:",
      statusLabel: "वर्तमान स्थिति",
      targetDateLabel: "वैधानिक निवारण अंतिम तिथि",
      slaProgressLabel: "वैधानिक ३०-दिवसीय प्रगति",
      escalationReady: "सीपीग्राम्स (CPGRAMS) विधिक अपील तैयार",
      dbtStatusLabel: "डीबीटी खाता स्थिति",
    },
    slaRibbon: {
      actTitle: "राज्य लोक सेवा गारंटी अधिनियम:",
      slaGuarantee: "३०-दिवसीय अनिवार्य वैधानिक समय-सीमा",
      escalationNotice:
        "सरकारी समय-सीमा समाप्त होने पर स्वतः सीपीग्राम्स (CPGRAMS) एवं राज्य सीएम हेल्पलाइन विधिक अपील सक्रिय",
    },
    modals: {
      voiceTitle: "द्विभाषी वॉइस सहायता",
      voiceSubtitle: "हिंदी एवं अंग्रेजी में व्हिस्पर एआई वाणी अभिज्ञान",
      voiceIdle: "सुनने के लिए तैयार। नीचे 'वॉइस इनटेक प्रारंभ करें' पर क्लिक करें।",
      voiceRecording: "माइक्रोफ़ोन सक्रिय • हिंदी और अंग्रेजी में सुना जा रहा है...",
      voiceSuccess: "वॉइस विवरण सफलता से प्राप्त हुआ! निष्कर्ष: विधवा पेंशन योजना के मापदंड सत्यापित।",
      voiceSamplePrompt:
        "स्वाभाविक रूप से बोलें। कहें: 'मैं सुनीता देवी हूँ, उम्र 65 वर्ष, मुझे विधवा पेंशन योजना का लाभ चाहिए' या 'मेरी आय 1.2 लाख है, छात्रवृत्ति आवेदन करना है'।",
      voiceSampleHindi: "हिंदी उदाहरण: 'मेरी उम्र 65 वर्ष है, मैं विधवा पेंशन के लिए आवेदन करना चाहती हूँ।'",
      voiceSampleEnglish: "English Sample: 'I am Amit Kumar, 20-year-old student applying for scholarship.'",
      voiceStartBtn: "वॉइस इनटेक प्रारंभ करें 🎙",
      voiceStopBtn: "वाणी विश्लेषण करें ⚡",
      voiceClose: "विंडो बंद करें",
      scannerTitle: "दस्तावेज़ डॉक्टर एवं वर्तनी विश्लेषक",
      scannerSubtitle: "इन-मेमोरी भारतीय नाम व डीबीटी खाता सत्यापन",
      scannerCard1Title: "आधार / राशन कार्ड का नाम",
      scannerCard2Title: "बैंक पासबुक खाते का नाम",
      scannerDetectedMismatch: "९५% ध्वन्यात्मक मिलान: 'सुनीता देवी' बनाम 'सुनीथा देवी' (अंतर: 'th' बनाम 't')",
      scannerAdvice:
        "बेनिफ़िट-ब्रिज आपके आवेदन को खारिज नहीं करता। इस वर्तनी भिन्नता को समय रहते सुधारने से बैंक डीबीटी विफलता नहीं होती।",
      scannerLaunchPortal: "लाइव पोर्टल में स्कैनर खोलें ↗",
      scannerClose: "बंद करें",
    },
  },
};

export default function App() {
  const [isIntroActive, setIsIntroActive] = useState<boolean>(true);

  // Requirement: Persist language selection in localStorage ('benefitbridge_lang')
  const [selectedLanguage, setSelectedLanguage] = useState<Language>(() => {
    if (typeof window !== "undefined") {
      const saved = localStorage.getItem("benefitbridge_lang");
      if (saved === "en" || saved === "hi") {
        return saved;
      }
    }
    return "en";
  });

  // Schemes Filter State
  const [activeSchemeTab, setActiveSchemeTab] = useState<"all" | "central" | "state" | "scholarship">("all");

  // Eligibility Calculator State
  const [ageInput, setAgeInput] = useState<string>("65");
  const [incomeInput, setIncomeInput] = useState<string>("0");
  const [categoryInput, setCategoryInput] = useState<string>("OBC");
  const [statusInput, setStatusInput] = useState<"senior" | "widow" | "student" | "farmer" | "general">("widow");
  const [evaluatedSchemes, setEvaluatedSchemes] = useState<SchemeInfo[]>([]);
  const [hasEvaluated, setHasEvaluated] = useState<boolean>(false);

  // Application Tracker State
  const sampleTrackedRecords: Record<string, TrackedApp> = {
    "APP-82403435": {
      id: "APP-82403435",
      applicant: "Sunita Devi",
      scheme: {
        en: "Indira Gandhi National Widow Pension Scheme (IGNWPS)",
        hi: "इंदिरा गांधी राष्ट्रीय विधवा पेंशन योजना (IGNWPS)",
      },
      status: "Under Review",
      slaDaysTotal: 30,
      slaDaysRemaining: 9,
      targetDate: "23-Oct-2026",
      dbtStatus: "Linked",
    },
    "APP-SUNITA-ACTIVE-01": {
      id: "APP-SUNITA-ACTIVE-01",
      applicant: "Sunita Devi",
      scheme: {
        en: "Indira Gandhi National Widow Pension Scheme (IGNWPS)",
        hi: "इंदिरा गांधी राष्ट्रीय विधवा पेंशन योजना (IGNWPS)",
      },
      status: "Submitted",
      slaDaysTotal: 30,
      slaDaysRemaining: 21,
      targetDate: "04-Nov-2026",
      dbtStatus: "Variation Detected",
    },
    "APP-SCHOLAR-2026": {
      id: "APP-SCHOLAR-2026",
      applicant: "Amit Kumar",
      scheme: {
        en: "Post-Matric Scholarship for SC/ST/OBC Students",
        hi: "अनुसूचित जाति/जनजाति/अन्य पिछड़ा वर्ग छात्रवृत्ति",
      },
      status: "Verified",
      slaDaysTotal: 21,
      slaDaysRemaining: 4,
      targetDate: "18-Oct-2026",
      dbtStatus: "Linked",
    },
  };

  const [searchToken, setSearchToken] = useState<string>("APP-82403435");
  const [currentTrackedApp, setCurrentTrackedApp] = useState<TrackedApp>(sampleTrackedRecords["APP-82403435"]);

  // Modals & Interactive States
  const [activeModal, setActiveModal] = useState<"none" | "voice" | "scanner">("none");
  const [voiceRecordingState, setVoiceRecordingState] = useState<"idle" | "recording" | "success">("idle");

  const underneathWordmarkRef = useRef<HTMLDivElement | null>(null);
  const lenisRef = useRef<Lenis | null>(null);

  // Sync selected language with localStorage and document.documentElement.lang
  useEffect(() => {
    if (typeof window !== "undefined") {
      localStorage.setItem("benefitbridge_lang", selectedLanguage);
      document.documentElement.lang = selectedLanguage;
    }
  }, [selectedLanguage]);

  // Evaluate initial scheme match on mount
  useEffect(() => {
    handleEvaluateEligibility();
  }, [statusInput, ageInput, incomeInput]);

  const handleEvaluateEligibility = () => {
    const ageNum = parseInt(ageInput) || 0;
    const incomeNum = parseInt(incomeInput) || 0;

    const matched = SCHEMES_DATABASE.filter((scheme) => {
      if (scheme.id === "widow_pension" && statusInput === "widow" && ageNum >= 40 && incomeNum <= 150000) {
        return true;
      }
      if (scheme.id === "old_age_pension" && ageNum >= 60 && incomeNum <= 200000) {
        return true;
      }
      if (scheme.id === "scholarship" && (statusInput === "student" || ageNum < 30) && incomeNum <= 250000) {
        return true;
      }
      if (scheme.id === "family_benefit" && incomeNum <= 120000) {
        return true;
      }
      return false;
    });

    setEvaluatedSchemes(matched);
    setHasEvaluated(true);
  };

  const handleTrackSubmit = (e?: React.FormEvent) => {
    if (e) e.preventDefault();
    const cleanToken = searchToken.trim().toUpperCase();
    if (sampleTrackedRecords[cleanToken]) {
      setCurrentTrackedApp(sampleTrackedRecords[cleanToken]);
    } else {
      setCurrentTrackedApp({
        id: cleanToken || "APP-CUSTOM-001",
        applicant: "Citizen Beneficiary",
        scheme: {
          en: "Statutory Citizen Scheme",
          hi: "वैधानिक नागरिक योजना",
        },
        status: "Submitted",
        slaDaysTotal: 30,
        slaDaysRemaining: 18,
        targetDate: "31-Oct-2026",
        dbtStatus: "Linked",
      });
    }
  };

  // Initialize Lenis smooth scroll and sync with ScrollTrigger
  useEffect(() => {
    const lenis = new Lenis({
      duration: 1.1,
      easing: (t: number) => Math.min(1, 1.001 - Math.pow(2, -10 * t)),
      smoothWheel: true,
    });
    lenisRef.current = lenis;

    lenis.on("scroll", ScrollTrigger.update);

    const updateTicker = (time: number) => {
      lenis.raf(time * 1000);
    };

    gsap.ticker.add(updateTicker);
    gsap.ticker.lagSmoothing(0);

    return () => {
      gsap.ticker.remove(updateTicker);
      lenis.destroy();
      lenisRef.current = null;
    };
  }, []);

  // Lock scroll while Section 1 intro is running
  useEffect(() => {
    if (isIntroActive) {
      lenisRef.current?.stop();
      document.body.style.overflow = "hidden";
    } else {
      lenisRef.current?.start();
      document.body.style.overflow = "";
      ScrollTrigger.refresh();
    }
  }, [isIntroActive]);

  const t = TRANSLATIONS[selectedLanguage];

  const filteredSchemes =
    activeSchemeTab === "all"
      ? SCHEMES_DATABASE
      : SCHEMES_DATABASE.filter((s) => s.category === activeSchemeTab);

  return (
    <div className="min-h-screen bg-[#FFFDF9] text-[#1A0F12] font-body selection:bg-[#DC2626] selection:text-white relative overflow-x-hidden">
      {/* Soft Ambient Rose & Amber Radial Glows */}
      <div className="fixed top-0 left-1/4 w-[500px] h-[500px] bg-red-100/40 rounded-full blur-3xl pointer-events-none -z-10" />
      <div className="fixed top-1/3 right-10 w-[450px] h-[450px] bg-amber-100/40 rounded-full blur-3xl pointer-events-none -z-10" />
      <div className="fixed bottom-10 left-1/3 w-[500px] h-[500px] bg-orange-100/30 rounded-full blur-3xl pointer-events-none -z-10" />

      {/* ---------------- SECTION 1: INTRO / PRELOADER HERO (4-Stage Startup) ---------------- */}
      {isIntroActive && (
        <Section1Intro
          onComplete={() => setIsIntroActive(false)}
          underneathWordmarkRef={underneathWordmarkRef}
        />
      )}

      {/* ---------------- TOP GLASS NAVBAR (Red & Cream Glassmorphism) ---------------- */}
      <header className="sticky top-0 z-40 bg-white/70 backdrop-blur-xl border-b border-white/90 shadow-2xs transition-all">
        <div className="w-full max-w-7xl mx-auto px-4 sm:px-8 h-16 flex items-center justify-between text-xs font-sans">
          {/* Brand & Subtitle */}
          <div className="flex items-center gap-3">
            <span className="font-extrabold tracking-tight text-[#991B1B] text-base sm:text-lg">
              {t.nav.brand}
            </span>
            <span className="text-[#1A0F12]/20 font-light">/</span>
            <span className="hidden lg:inline font-medium text-[#1A0F12]/75">
              {t.nav.taglineDesktop}
            </span>
            <span className="lg:hidden sm:inline hidden font-medium text-[#1A0F12]/75">
              {t.nav.taglineMobile}
            </span>
          </div>

          {/* Navigation Links */}
          <nav className="hidden md:flex items-center gap-6 text-[11px] font-medium text-[#1A0F12]/80">
            <a href="#dashboard" className="hover:text-[#DC2626] transition-colors">
              {t.nav.tabDashboard}
            </a>
            <a href="#eligibility" className="hover:text-[#DC2626] transition-colors">
              {t.nav.tabEligibility}
            </a>
            <a href="#schemes" className="hover:text-[#DC2626] transition-colors">
              {t.nav.tabSchemes}
            </a>
            <a href="#tracker" className="hover:text-[#DC2626] transition-colors">
              {t.nav.tabTrack}
            </a>
          </nav>

          {/* Controls: Live Gateway Badge, Language Switcher, Portal Link */}
          <div className="flex items-center gap-3 sm:gap-4">
            {/* Live Gateway Badge */}
            <div className="hidden xl:flex items-center gap-1.5 px-3 py-1 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-[10px] font-semibold">
              <span className="w-2 h-2 rounded-full bg-emerald-500 animate-pulse" />
              <span>{t.nav.liveGatewayBadge}</span>
            </div>

            {/* Language Switcher Button Group */}
            <div
              className="flex items-center border border-[#1A0F12]/15 rounded-full p-0.5 bg-white/90 shadow-2xs backdrop-blur-md text-[11px]"
              role="group"
              aria-label="Language selection"
            >
              <button
                type="button"
                onClick={() => setSelectedLanguage("en")}
                className={`px-3 py-1 rounded-full font-bold transition-all cursor-pointer ${
                  selectedLanguage === "en"
                    ? "bg-[#DC2626] text-white shadow-xs"
                    : "text-[#1A0F12]/70 hover:text-[#1A0F12]"
                }`}
                aria-pressed={selectedLanguage === "en"}
                aria-label="Switch language to English"
              >
                EN
              </button>
              <button
                type="button"
                onClick={() => setSelectedLanguage("hi")}
                className={`px-3 py-1 rounded-full font-bold transition-all cursor-pointer ${
                  selectedLanguage === "hi"
                    ? "bg-[#DC2626] text-white shadow-xs"
                    : "text-[#1A0F12]/70 hover:text-[#1A0F12]"
                }`}
                aria-pressed={selectedLanguage === "hi"}
                aria-label="भाषा हिंदी में बदलें"
              >
                हिंदी
              </button>
            </div>

            {/* API Docs Button */}
            <a
              href={getApiDocsUrl()}
              target="_blank"
              rel="noreferrer"
              className="hidden sm:inline-flex items-center gap-1 text-[11px] font-semibold text-[#1A0F12]/75 hover:text-[#DC2626] transition-colors"
            >
              <span>{t.nav.apiDocsBtn}</span>
              <span aria-hidden="true">↗</span>
            </a>

            {/* Live Portal Button */}
            <a
              href={getPortalUrl()}
              target="_blank"
              rel="noreferrer"
              className="inline-flex items-center gap-1.5 px-3.5 py-1.5 rounded-full bg-[#DC2626]/10 hover:bg-[#DC2626]/15 border border-[#DC2626]/30 text-[11px] font-bold text-[#991B1B] hover:text-[#DC2626] transition-all"
            >
              <span>{t.nav.livePortalBtn}</span>
              <span aria-hidden="true">↗</span>
            </a>
          </div>
        </div>
      </header>

      {/* ---------------- SECTION 2: STATEMENT (CINEMATIC) ---------------- */}
      <Section2Statement underneathWordmarkRef={underneathWordmarkRef} />

      {/* ---------------- SECTION 3: FOCUS (PINNED) ---------------- */}
      <Section3Focus />

      {/* ---------------- SECTION 4: THE JOURNEY TICKETS (3D FLY-IN) ---------------- */}
      <Section4JourneyTickets />

      {/* ---------------- SECTION 5: WHO DECIDES (RED FULL-BLEED) ---------------- */}
      <Section5WhoDecides />

      {/* ---------------- HERO BANNER & STATS ---------------- */}
      <section id="dashboard" className="w-full max-w-7xl mx-auto px-6 sm:px-12 pt-20 pb-12">
        <div className="p-8 sm:p-12 rounded-3xl bg-white/70 backdrop-blur-xl border border-white/90 shadow-sm relative overflow-hidden space-y-8">
          <div className="max-w-3xl space-y-4">
            <span className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-[#DC2626]/10 border border-[#DC2626]/20 text-[#991B1B] text-[10px] font-mono uppercase font-bold tracking-wider">
              {t.hero.badge}
            </span>
            <h1 className="text-3xl sm:text-5xl font-black tracking-tight text-[#1A0F12] leading-[1.15]">
              {t.hero.headline}
            </h1>
            <p className="text-sm sm:text-base text-[#1A0F12]/75 font-light leading-relaxed">
              {t.hero.subtitle}
            </p>
          </div>

          {/* Quick Stats Grid */}
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4 pt-6 border-t border-[#1A0F12]/10">
            <div className="p-4 rounded-2xl bg-white/80 border border-white/80 shadow-2xs">
              <span className="text-2xl sm:text-3xl font-extrabold text-[#991B1B] block">
                {t.hero.stat1Val}
              </span>
              <span className="text-[11px] text-[#1A0F12]/70 font-medium">
                {t.hero.stat1Label}
              </span>
            </div>
            <div className="p-4 rounded-2xl bg-white/80 border border-white/80 shadow-2xs">
              <span className="text-2xl sm:text-3xl font-extrabold text-[#DC2626] block">
                {t.hero.stat2Val}
              </span>
              <span className="text-[11px] text-[#1A0F12]/70 font-medium">
                {t.hero.stat2Label}
              </span>
            </div>
            <div className="p-4 rounded-2xl bg-white/80 border border-white/80 shadow-2xs">
              <span className="text-2xl sm:text-3xl font-extrabold text-amber-600 block">
                {t.hero.stat3Val}
              </span>
              <span className="text-[11px] text-[#1A0F12]/70 font-medium">
                {t.hero.stat3Label}
              </span>
            </div>
            <div className="p-4 rounded-2xl bg-white/80 border border-white/80 shadow-2xs">
              <span className="text-2xl sm:text-3xl font-extrabold text-emerald-700 block">
                {t.hero.stat4Val}
              </span>
              <span className="text-[11px] text-[#1A0F12]/70 font-medium">
                {t.hero.stat4Label}
              </span>
            </div>
          </div>
        </div>
      </section>

      {/* ---------------- INTERACTIVE FEATURE HUB (3 GLASS CARDS) ---------------- */}
      <section className="w-full max-w-7xl mx-auto px-6 sm:px-12 py-10">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {/* Card 1: DigiLocker Direct Apply */}
          <div className="rounded-3xl p-7 bg-white/65 backdrop-blur-xl border border-white/90 shadow-sm hover:border-[#DC2626]/40 hover:shadow-xl hover:shadow-red-500/5 transition-all flex flex-col justify-between group">
            <div>
              <div className="flex items-center justify-between mb-5">
                <div className="w-12 h-12 rounded-2xl bg-[#DC2626]/10 border border-[#DC2626]/20 flex items-center justify-center text-[#DC2626] group-hover:scale-105 transition-transform">
                  <svg className="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M19.35 10.04C18.67 6.59 15.64 4 12 4 9.11 4 6.6 5.64 5.35 8.04 2.34 8.36 0 10.91 0 14c0 3.31 2.69 6 6 6h13c2.76 0 5-2.24 5-5 0-2.64-2.05-4.78-4.65-4.96zM14 13v4h-4v-4H7l5-5 5 5h-3z" />
                  </svg>
                </div>
                <span className="text-[10px] font-mono uppercase px-2.5 py-1 rounded-full bg-[#991B1B]/10 text-[#991B1B] font-bold border border-[#991B1B]/20">
                  {t.cards.digilocker.badge}
                </span>
              </div>
              <h3 className="text-xl font-bold text-[#1A0F12] mb-2 group-hover:text-[#991B1B] transition-colors">
                {t.cards.digilocker.title}
              </h3>
              <p className="text-xs text-[#1A0F12]/75 leading-relaxed font-light">
                {t.cards.digilocker.description}
              </p>
            </div>
            <a
              href={getDigiLockerUrl()}
              target="_blank"
              rel="noreferrer"
              className="mt-8 inline-flex items-center justify-center gap-2 px-5 py-3 rounded-2xl bg-[#DC2626] hover:bg-[#991B1B] text-white text-xs font-bold shadow-md shadow-red-600/20 transition-all hover:gap-3"
            >
              <span>{t.cards.digilocker.cta}</span>
              <span aria-hidden="true">→</span>
            </a>
          </div>

          {/* Card 2: Voice Assistance / Whisper AI */}
          <div className="rounded-3xl p-7 bg-white/65 backdrop-blur-xl border border-white/90 shadow-sm hover:border-[#DC2626]/40 hover:shadow-xl hover:shadow-red-500/5 transition-all flex flex-col justify-between group">
            <div>
              <div className="flex items-center justify-between mb-5">
                <div className="w-12 h-12 rounded-2xl bg-[#991B1B]/10 border border-[#991B1B]/20 flex items-center justify-center text-[#991B1B] group-hover:scale-105 transition-transform">
                  <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2"
                      d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z"
                    />
                  </svg>
                </div>
                <span className="text-[10px] font-mono uppercase px-2.5 py-1 rounded-full bg-[#DC2626]/10 text-[#DC2626] font-bold border border-[#DC2626]/20">
                  {t.cards.voice.badge}
                </span>
              </div>
              <h3 className="text-xl font-bold text-[#1A0F12] mb-2 group-hover:text-[#991B1B] transition-colors">
                {t.cards.voice.title}
              </h3>
              <p className="text-xs text-[#1A0F12]/75 leading-relaxed font-light">
                {t.cards.voice.description}
              </p>
            </div>
            <button
              type="button"
              onClick={() => {
                setVoiceRecordingState("idle");
                setActiveModal("voice");
              }}
              className="mt-8 inline-flex items-center justify-center gap-2 px-5 py-3 rounded-2xl border border-[#DC2626]/30 hover:border-[#DC2626] bg-white hover:bg-[#DC2626]/5 text-[#991B1B] hover:text-[#DC2626] text-xs font-bold transition-all cursor-pointer shadow-2xs"
            >
              <span>{t.cards.voice.cta}</span>
              <span aria-hidden="true">🎙</span>
            </button>
          </div>

          {/* Card 3: Document Doctor / Spelling Mismatch Scanner */}
          <div className="rounded-3xl p-7 bg-white/65 backdrop-blur-xl border border-white/90 shadow-sm hover:border-[#DC2626]/40 hover:shadow-xl hover:shadow-red-500/5 transition-all flex flex-col justify-between group">
            <div>
              <div className="flex items-center justify-between mb-5">
                <div className="w-12 h-12 rounded-2xl bg-amber-500/10 border border-amber-500/20 flex items-center justify-center text-amber-700 group-hover:scale-105 transition-transform">
                  <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2"
                      d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
                    />
                  </svg>
                </div>
                <span className="text-[10px] font-mono uppercase px-2.5 py-1 rounded-full bg-amber-50 text-amber-900 font-bold border border-amber-200">
                  {t.cards.documentDoctor.badge}
                </span>
              </div>
              <h3 className="text-xl font-bold text-[#1A0F12] mb-2 group-hover:text-[#991B1B] transition-colors">
                {t.cards.documentDoctor.title}
              </h3>
              <p className="text-xs text-[#1A0F12]/75 leading-relaxed font-light">
                {t.cards.documentDoctor.description}
              </p>
            </div>
            <button
              type="button"
              onClick={() => setActiveModal("scanner")}
              className="mt-8 inline-flex items-center justify-center gap-2 px-5 py-3 rounded-2xl border border-[#1A0F12]/20 hover:border-[#DC2626] bg-white hover:bg-[#DC2626]/5 text-[#1A0F12] hover:text-[#DC2626] text-xs font-bold transition-all cursor-pointer shadow-2xs"
            >
              <span>{t.cards.documentDoctor.cta}</span>
              <span aria-hidden="true">→</span>
            </button>
          </div>
        </div>
      </section>

      {/* ---------------- INTERACTIVE SECTION 1: SCHEMES & PORTALS DIRECTORY ---------------- */}
      <section id="schemes" className="w-full max-w-7xl mx-auto px-6 sm:px-12 py-12 space-y-8">
        <div className="flex flex-col md:flex-row md:items-end justify-between gap-4">
          <div className="space-y-1">
            <span className="text-[10px] font-mono uppercase tracking-widest text-[#DC2626] font-bold block">
              {t.schemesSection.sectionBadge}
            </span>
            <h2 className="text-2xl sm:text-4xl font-extrabold text-[#1A0F12] tracking-tight">
              {t.schemesSection.title}
            </h2>
            <p className="text-xs sm:text-sm text-[#1A0F12]/75 font-light max-w-2xl">
              {t.schemesSection.subtitle}
            </p>
          </div>

          {/* Filter Tabs */}
          <div className="flex flex-wrap items-center gap-1.5 p-1 rounded-2xl bg-white/80 border border-white/90 shadow-2xs">
            <button
              type="button"
              onClick={() => setActiveSchemeTab("all")}
              className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                activeSchemeTab === "all"
                  ? "bg-[#DC2626] text-white shadow-xs"
                  : "text-[#1A0F12]/70 hover:text-[#1A0F12]"
              }`}
            >
              {t.schemesSection.filterAll}
            </button>
            <button
              type="button"
              onClick={() => setActiveSchemeTab("central")}
              className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                activeSchemeTab === "central"
                  ? "bg-[#DC2626] text-white shadow-xs"
                  : "text-[#1A0F12]/70 hover:text-[#1A0F12]"
              }`}
            >
              {t.schemesSection.filterCentral}
            </button>
            <button
              type="button"
              onClick={() => setActiveSchemeTab("state")}
              className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                activeSchemeTab === "state"
                  ? "bg-[#DC2626] text-white shadow-xs"
                  : "text-[#1A0F12]/70 hover:text-[#1A0F12]"
              }`}
            >
              {t.schemesSection.filterState}
            </button>
            <button
              type="button"
              onClick={() => setActiveSchemeTab("scholarship")}
              className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                activeSchemeTab === "scholarship"
                  ? "bg-[#DC2626] text-white shadow-xs"
                  : "text-[#1A0F12]/70 hover:text-[#1A0F12]"
              }`}
            >
              {t.schemesSection.filterScholarship}
            </button>
          </div>
        </div>

        {/* Scheme Cards Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {filteredSchemes.map((scheme) => (
            <div
              key={scheme.id}
              className="p-6 sm:p-7 rounded-3xl bg-white/70 backdrop-blur-xl border border-white/90 shadow-sm hover:border-[#DC2626]/40 hover:shadow-lg transition-all flex flex-col justify-between space-y-6"
            >
              <div className="space-y-3">
                <div className="flex items-center justify-between gap-2">
                  <span className="text-[10px] font-mono font-bold uppercase tracking-wider text-[#991B1B]">
                    {scheme.ministry[selectedLanguage]}
                  </span>
                  <span className="text-[10px] font-bold px-2.5 py-0.5 rounded-full bg-red-50 text-[#DC2626] border border-red-200">
                    {scheme.badge[selectedLanguage]}
                  </span>
                </div>

                <h3 className="text-lg sm:text-xl font-bold text-[#1A0F12] leading-snug">
                  {scheme.title[selectedLanguage]}
                </h3>

                <p className="text-xs text-[#1A0F12]/75 leading-relaxed font-light">
                  {scheme.description[selectedLanguage]}
                </p>

                <div className="pt-3 border-t border-[#1A0F12]/10 space-y-2 text-xs">
                  <div>
                    <span className="font-bold text-[#1A0F12] block mb-0.5">
                      {t.schemesSection.criteriaLabel}:
                    </span>
                    <span className="text-[#1A0F12]/70 font-light">
                      {scheme.criteria[selectedLanguage]}
                    </span>
                  </div>
                  <div>
                    <span className="font-bold text-[#991B1B] block mb-0.5">
                      {t.schemesSection.charterLabel}:
                    </span>
                    <span className="text-[#1A0F12]/70 font-light text-[11px]">
                      {scheme.charter[selectedLanguage]}
                    </span>
                  </div>
                </div>
              </div>

              <div className="pt-4 border-t border-[#1A0F12]/10 flex items-center justify-between">
                <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-amber-50 border border-amber-200 text-amber-900 text-xs font-bold">
                  <span className="w-2 h-2 rounded-full bg-amber-500 animate-pulse" />
                  <span>{scheme.sla[selectedLanguage]}</span>
                </div>

                <a
                  href={scheme.portalUrl}
                  target="_blank"
                  rel="noreferrer"
                  className="inline-flex items-center gap-1 px-4 py-2 rounded-xl bg-[#DC2626] hover:bg-[#991B1B] text-white text-xs font-bold shadow-xs transition-all"
                >
                  <span>{t.schemesSection.visitPortalBtn}</span>
                  <span aria-hidden="true">↗</span>
                </a>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* ---------------- INTERACTIVE SECTION 2: ELIGIBILITY PRE-SCREENING ---------------- */}
      <section id="eligibility" className="w-full max-w-7xl mx-auto px-6 sm:px-12 py-12">
        <div className="p-8 sm:p-12 rounded-3xl bg-white/70 backdrop-blur-xl border border-white/90 shadow-sm space-y-8">
          <div className="space-y-1">
            <span className="text-[10px] font-mono uppercase tracking-widest text-[#DC2626] font-bold block">
              {t.eligibilitySection.sectionBadge}
            </span>
            <h2 className="text-2xl sm:text-3xl font-extrabold text-[#1A0F12]">
              {t.eligibilitySection.title}
            </h2>
            <p className="text-xs sm:text-sm text-[#1A0F12]/75 font-light">
              {t.eligibilitySection.subtitle}
            </p>
          </div>

          {/* Calculator Inputs Form */}
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-4">
            {/* Age Input */}
            <div className="space-y-1.5">
              <label htmlFor="age-input" className="text-xs font-bold text-[#1A0F12] block">
                {t.eligibilitySection.ageLabel}
              </label>
              <input
                id="age-input"
                type="number"
                value={ageInput}
                onChange={(e) => setAgeInput(e.target.value)}
                placeholder={t.eligibilitySection.agePlaceholder}
                className="w-full px-4 py-2.5 rounded-xl border border-[#1A0F12]/15 bg-white text-xs font-medium focus:outline-hidden focus:border-[#DC2626]"
              />
            </div>

            {/* Income Input */}
            <div className="space-y-1.5">
              <label htmlFor="income-input" className="text-xs font-bold text-[#1A0F12] block">
                {t.eligibilitySection.incomeLabel}
              </label>
              <input
                id="income-input"
                type="number"
                value={incomeInput}
                onChange={(e) => setIncomeInput(e.target.value)}
                placeholder={t.eligibilitySection.incomePlaceholder}
                className="w-full px-4 py-2.5 rounded-xl border border-[#1A0F12]/15 bg-white text-xs font-medium focus:outline-hidden focus:border-[#DC2626]"
              />
            </div>

            {/* Category */}
            <div className="space-y-1.5">
              <label htmlFor="category-select" className="text-xs font-bold text-[#1A0F12] block">
                {t.eligibilitySection.categoryLabel}
              </label>
              <select
                id="category-select"
                value={categoryInput}
                onChange={(e) => setCategoryInput(e.target.value)}
                className="w-full px-3 py-2.5 rounded-xl border border-[#1A0F12]/15 bg-white text-xs font-medium focus:outline-hidden focus:border-[#DC2626]"
              >
                <option value="General">General</option>
                <option value="OBC">OBC (अन्य पिछड़ा वर्ग)</option>
                <option value="SC">SC (अनुसूचित जाति)</option>
                <option value="ST">ST (अनुसूचित जनजाति)</option>
                <option value="EWS">EWS (आर्थिक रूप से कमजोर)</option>
              </select>
            </div>

            {/* Status */}
            <div className="space-y-1.5">
              <label htmlFor="status-select" className="text-xs font-bold text-[#1A0F12] block">
                {t.eligibilitySection.statusLabel}
              </label>
              <select
                id="status-select"
                value={statusInput}
                onChange={(e) => setStatusInput(e.target.value as any)}
                className="w-full px-3 py-2.5 rounded-xl border border-[#1A0F12]/15 bg-white text-xs font-medium focus:outline-hidden focus:border-[#DC2626]"
              >
                <option value="widow">{t.eligibilitySection.statusOptions.widow}</option>
                <option value="senior">{t.eligibilitySection.statusOptions.senior}</option>
                <option value="student">{t.eligibilitySection.statusOptions.student}</option>
                <option value="farmer">{t.eligibilitySection.statusOptions.farmer}</option>
                <option value="general">{t.eligibilitySection.statusOptions.general}</option>
              </select>
            </div>

            {/* Evaluate Button */}
            <div className="flex items-end">
              <button
                type="button"
                onClick={handleEvaluateEligibility}
                className="w-full py-2.5 px-4 rounded-xl bg-[#DC2626] hover:bg-[#991B1B] text-white text-xs font-bold transition-all shadow-sm cursor-pointer"
              >
                {t.eligibilitySection.evaluateBtn}
              </button>
            </div>
          </div>

          {/* Results Display */}
          {hasEvaluated && (
            <div className="p-6 rounded-2xl bg-white border border-[#1A0F12]/10 space-y-4">
              <div className="flex items-center justify-between">
                <span className="text-xs font-bold text-[#991B1B] uppercase tracking-wider">
                  {t.eligibilitySection.resultEligibleBadge}
                </span>
                <span className="px-3 py-1 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold">
                  {evaluatedSchemes.length} {t.eligibilitySection.resultEligibleCount}
                </span>
              </div>

              {evaluatedSchemes.length > 0 ? (
                <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
                  {evaluatedSchemes.map((s) => (
                    <div
                      key={s.id}
                      className="p-4 rounded-xl bg-[#FFFDF9] border border-[#DC2626]/20 flex flex-col justify-between space-y-2"
                    >
                      <div>
                        <span className="text-[10px] font-mono text-[#991B1B] font-bold block mb-1">
                          {s.badge[selectedLanguage]}
                        </span>
                        <h4 className="text-sm font-bold text-[#1A0F12] leading-tight">
                          {s.title[selectedLanguage]}
                        </h4>
                      </div>
                      <div className="flex items-center justify-between pt-2 text-[11px]">
                        <span className="text-amber-800 font-semibold">{s.sla[selectedLanguage]}</span>
                        <a
                          href={s.portalUrl}
                          target="_blank"
                          rel="noreferrer"
                          className="text-[#DC2626] font-bold hover:underline"
                        >
                          {t.schemesSection.visitPortalBtn} ↗
                        </a>
                      </div>
                    </div>
                  ))}
                </div>
              ) : (
                <p className="text-xs text-[#1A0F12]/70 font-light">
                  {t.eligibilitySection.resultNone}
                </p>
              )}
            </div>
          )}
        </div>
      </section>

      {/* ---------------- INTERACTIVE SECTION 3: CITIZEN CHARTER SLA TRACKER ---------------- */}
      <section id="tracker" className="w-full max-w-7xl mx-auto px-6 sm:px-12 py-12">
        <div className="p-8 sm:p-12 rounded-3xl bg-white/70 backdrop-blur-xl border border-white/90 shadow-sm space-y-8">
          <div className="space-y-1">
            <span className="text-[10px] font-mono uppercase tracking-widest text-[#DC2626] font-bold block">
              {t.trackerSection.sectionBadge}
            </span>
            <h2 className="text-2xl sm:text-3xl font-extrabold text-[#1A0F12]">
              {t.trackerSection.title}
            </h2>
            <p className="text-xs sm:text-sm text-[#1A0F12]/75 font-light">
              {t.trackerSection.subtitle}
            </p>
          </div>

          {/* Search Form */}
          <form onSubmit={handleTrackSubmit} className="flex flex-col sm:flex-row gap-3">
            <input
              type="text"
              value={searchToken}
              onChange={(e) => setSearchToken(e.target.value)}
              placeholder={t.trackerSection.placeholder}
              className="flex-1 px-4 py-3 rounded-2xl border border-[#1A0F12]/15 bg-white text-xs font-medium focus:outline-hidden focus:border-[#DC2626]"
            />
            <button
              type="submit"
              className="px-6 py-3 rounded-2xl bg-[#DC2626] hover:bg-[#991B1B] text-white text-xs font-bold transition-all shadow-sm cursor-pointer shrink-0"
            >
              {t.trackerSection.trackBtn}
            </button>
          </form>

          {/* Quick Click Sample Tokens */}
          <div className="flex flex-wrap items-center gap-2 text-xs">
            <span className="text-[#1A0F12]/60 font-medium">
              {t.trackerSection.quickSampleTokens}
            </span>
            {Object.keys(sampleTrackedRecords).map((tok) => (
              <button
                key={tok}
                type="button"
                onClick={() => {
                  setSearchToken(tok);
                  setCurrentTrackedApp(sampleTrackedRecords[tok]);
                }}
                className={`px-2.5 py-1 rounded-lg text-[11px] font-mono font-bold transition-all cursor-pointer ${
                  searchToken === tok
                    ? "bg-[#DC2626] text-white"
                    : "bg-white border border-[#1A0F12]/15 text-[#1A0F12]/80 hover:border-[#DC2626]"
                }`}
              >
                {tok}
              </button>
            ))}
          </div>

          {/* Active Tracked App Card */}
          {currentTrackedApp && (
            <div className="p-6 rounded-2xl bg-white border border-[#1A0F12]/10 space-y-6">
              <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 pb-4 border-b border-[#1A0F12]/10">
                <div>
                  <span className="text-xs font-mono font-bold text-[#DC2626]">
                    {currentTrackedApp.id}
                  </span>
                  <h3 className="text-base font-bold text-[#1A0F12]">
                    {currentTrackedApp.scheme[selectedLanguage]}
                  </h3>
                  <span className="text-xs text-[#1A0F12]/70 font-light">
                    Applicant: <strong className="font-semibold text-[#1A0F12]">{currentTrackedApp.applicant}</strong>
                  </span>
                </div>

                <div className="flex items-center gap-2">
                  <span className="px-3 py-1 rounded-full bg-blue-50 border border-blue-200 text-blue-800 text-xs font-bold">
                    {t.trackerSection.statusLabel}: {currentTrackedApp.status}
                  </span>
                  <span
                    className={`px-3 py-1 rounded-full text-xs font-bold border ${
                      currentTrackedApp.dbtStatus === "Linked"
                        ? "bg-emerald-50 border-emerald-200 text-emerald-800"
                        : "bg-amber-50 border-amber-200 text-amber-900"
                    }`}
                  >
                    DBT: {currentTrackedApp.dbtStatus}
                  </span>
                </div>
              </div>

              {/* Statutory SLA Progress Bar */}
              <div className="space-y-2">
                <div className="flex items-center justify-between text-xs">
                  <span className="font-bold text-[#1A0F12]">
                    {t.trackerSection.slaProgressLabel}
                  </span>
                  <span className="font-bold text-[#DC2626]">
                    {currentTrackedApp.slaDaysRemaining} Days Remaining (Target: {currentTrackedApp.targetDate})
                  </span>
                </div>
                <div className="w-full h-3 rounded-full bg-gray-100 overflow-hidden border border-[#1A0F12]/10">
                  <div
                    className="h-full bg-gradient-to-r from-emerald-500 via-amber-500 to-[#DC2626] rounded-full transition-all duration-500"
                    style={{
                      width: `${Math.round(
                        ((currentTrackedApp.slaDaysTotal - currentTrackedApp.slaDaysRemaining) /
                          currentTrackedApp.slaDaysTotal) *
                          100
                      )}%`,
                    }}
                  />
                </div>
                <div className="flex items-center justify-between text-[11px] text-[#1A0F12]/60 font-mono">
                  <span>Day 1 (Intake)</span>
                  <span className="text-[#991B1B] font-bold">
                    {t.trackerSection.escalationReady}
                  </span>
                  <span>Day {currentTrackedApp.slaDaysTotal} (Statutory Limit)</span>
                </div>
              </div>
            </div>
          )}
        </div>
      </section>

      {/* ---------------- STATUTORY SLA GUARANTEE RIBBON ---------------- */}
      <section className="w-full max-w-7xl mx-auto px-6 sm:px-12 py-6">
        <div className="p-5 sm:p-6 rounded-3xl border border-white/90 bg-white/70 backdrop-blur-xl flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 shadow-sm">
          <div className="flex items-center gap-3">
            <span className="w-3 h-3 rounded-full bg-[#DC2626] animate-pulse shrink-0" />
            <span className="text-xs sm:text-sm text-[#1A0F12]/85">
              {t.slaRibbon.actTitle}{" "}
              <strong className="text-[#1A0F12] font-extrabold">
                {t.slaRibbon.slaGuarantee}
              </strong>
            </span>
          </div>
          <span className="text-[#991B1B] font-bold text-xs bg-[#991B1B]/10 px-3.5 py-1.5 rounded-full border border-[#991B1B]/20">
            {t.slaRibbon.escalationNotice}
          </span>
        </div>
      </section>

      {/* ---------------- SECTION 6: CLOSING (WORDMARK & CREDITS) ---------------- */}
      <Section6Closing />

      {/* Replay trigger footer bar */}
      <div className="w-full max-w-7xl mx-auto px-6 sm:px-12 py-6 flex items-center justify-between text-xs text-[#1A0F12]/60 border-t border-[#1A0F12]/10">
        <span>BenefitBridge © 2026 • Government of India Digital Public Infrastructure Partner</span>
        <button
          type="button"
          onClick={() => {
            sessionStorage.removeItem("bb_intro_seen");
            setIsIntroActive(true);
          }}
          className="text-[#DC2626] hover:text-[#991B1B] hover:underline font-bold cursor-pointer transition-colors"
        >
          {t.splash.replayBtn}
        </button>
      </div>

      {/* ---------------- INTERACTIVE MODAL 1: VOICE ASSISTANCE ---------------- */}
      {activeModal === "voice" && (
        <div
          className="fixed inset-0 z-50 bg-[#1A0F12]/60 backdrop-blur-xs flex items-center justify-center p-4"
          role="dialog"
          aria-modal="true"
          aria-labelledby="voice-modal-title"
        >
          <div className="bg-[#FFFDF9] border border-[#DC2626]/30 rounded-3xl p-6 sm:p-8 max-w-lg w-full shadow-2xl space-y-5 animate-in fade-in zoom-in-95 duration-200">
            <div className="flex items-start justify-between">
              <div className="flex items-center gap-3">
                <div className="w-12 h-12 rounded-2xl bg-[#DC2626]/10 text-[#DC2626] flex items-center justify-center text-2xl">
                  🎙
                </div>
                <div>
                  <h3 id="voice-modal-title" className="font-extrabold text-lg text-[#1A0F12]">
                    {t.modals.voiceTitle}
                  </h3>
                  <p className="text-xs text-[#1A0F12]/60 font-light">
                    {t.modals.voiceSubtitle}
                  </p>
                </div>
              </div>
              <button
                type="button"
                onClick={() => setActiveModal("none")}
                className="text-[#1A0F12]/40 hover:text-[#1A0F12] text-2xl font-bold cursor-pointer p-1"
                aria-label="Close dialog"
              >
                ×
              </button>
            </div>

            <div className="p-5 rounded-2xl bg-white border border-[#1A0F12]/10 space-y-4">
              <div className="flex items-center gap-2 text-xs font-bold text-[#991B1B]">
                {voiceRecordingState === "recording" ? (
                  <>
                    <span className="w-2.5 h-2.5 rounded-full bg-red-600 animate-ping" />
                    <span>{t.modals.voiceRecording}</span>
                  </>
                ) : voiceRecordingState === "success" ? (
                  <>
                    <span className="w-2.5 h-2.5 rounded-full bg-emerald-600" />
                    <span className="text-emerald-700">{t.modals.voiceSuccess}</span>
                  </>
                ) : (
                  <>
                    <span className="w-2.5 h-2.5 rounded-full bg-gray-400" />
                    <span className="text-[#1A0F12]/70">{t.modals.voiceIdle}</span>
                  </>
                )}
              </div>

              <p className="text-xs text-[#1A0F12]/80 leading-relaxed font-light">
                {t.modals.voiceSamplePrompt}
              </p>

              <div className="pt-2 border-t border-[#1A0F12]/10 space-y-2 text-[11px] font-mono text-[#1A0F12]/75">
                <div className="p-2.5 rounded-xl bg-[#FFFDF9] border border-[#1A0F12]/10">
                  {t.modals.voiceSampleHindi}
                </div>
                <div className="p-2.5 rounded-xl bg-[#FFFDF9] border border-[#1A0F12]/10">
                  {t.modals.voiceSampleEnglish}
                </div>
              </div>
            </div>

            <div className="flex items-center justify-end gap-3 pt-2">
              {voiceRecordingState === "idle" && (
                <button
                  type="button"
                  onClick={() => setVoiceRecordingState("recording")}
                  className="px-5 py-2.5 rounded-xl bg-[#DC2626] hover:bg-[#991B1B] text-white text-xs font-bold transition-all shadow-sm cursor-pointer"
                >
                  {t.modals.voiceStartBtn}
                </button>
              )}
              {voiceRecordingState === "recording" && (
                <button
                  type="button"
                  onClick={() => setVoiceRecordingState("success")}
                  className="px-5 py-2.5 rounded-xl bg-amber-600 hover:bg-amber-700 text-white text-xs font-bold transition-all shadow-sm cursor-pointer animate-pulse"
                >
                  {t.modals.voiceStopBtn}
                </button>
              )}
              <button
                type="button"
                onClick={() => setActiveModal("none")}
                className="px-4 py-2.5 rounded-xl border border-[#1A0F12]/20 text-[#1A0F12]/80 text-xs font-semibold hover:bg-black/5 transition-colors cursor-pointer"
              >
                {t.modals.voiceClose}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* ---------------- INTERACTIVE MODAL 2: DOCUMENT DOCTOR SCANNER ---------------- */}
      {activeModal === "scanner" && (
        <div
          className="fixed inset-0 z-50 bg-[#1A0F12]/60 backdrop-blur-xs flex items-center justify-center p-4"
          role="dialog"
          aria-modal="true"
          aria-labelledby="scanner-modal-title"
        >
          <div className="bg-[#FFFDF9] border border-[#1A0F12]/20 rounded-3xl p-6 sm:p-8 max-w-lg w-full shadow-2xl space-y-5 animate-in fade-in zoom-in-95 duration-200">
            <div className="flex items-start justify-between">
              <div className="flex items-center gap-3">
                <div className="w-12 h-12 rounded-2xl bg-amber-500/10 text-amber-700 flex items-center justify-center text-2xl">
                  🔍
                </div>
                <div>
                  <h3 id="scanner-modal-title" className="font-extrabold text-lg text-[#1A0F12]">
                    {t.modals.scannerTitle}
                  </h3>
                  <p className="text-xs text-[#1A0F12]/60 font-light">
                    {t.modals.scannerSubtitle}
                  </p>
                </div>
              </div>
              <button
                type="button"
                onClick={() => setActiveModal("none")}
                className="text-[#1A0F12]/40 hover:text-[#1A0F12] text-2xl font-bold cursor-pointer p-1"
                aria-label="Close dialog"
              >
                ×
              </button>
            </div>

            <div className="p-5 rounded-2xl bg-white border border-[#1A0F12]/10 space-y-3">
              <div className="grid grid-cols-2 gap-3 text-xs">
                <div className="p-3 rounded-xl bg-gray-50 border border-gray-200">
                  <span className="text-[10px] text-gray-500 font-mono block">
                    {t.modals.scannerCard1Title}
                  </span>
                  <span className="font-bold text-[#1A0F12]">Sunita Devi</span>
                </div>
                <div className="p-3 rounded-xl bg-red-50 border border-red-200">
                  <span className="text-[10px] text-red-500 font-mono block">
                    {t.modals.scannerCard2Title}
                  </span>
                  <span className="font-bold text-[#DC2626]">Sunitha Devi</span>
                </div>
              </div>

              <div className="p-3 rounded-xl bg-amber-50 border border-amber-200 text-amber-900 text-xs font-semibold">
                ⚠️ {t.modals.scannerDetectedMismatch}
              </div>

              <p className="text-xs text-[#1A0F12]/75 leading-relaxed font-light">
                {t.modals.scannerAdvice}
              </p>
            </div>

            <div className="flex items-center justify-end gap-3 pt-2">
              <button
                type="button"
                onClick={() => setActiveModal("none")}
                className="px-4 py-2.5 rounded-xl border border-[#1A0F12]/20 text-[#1A0F12]/80 text-xs font-semibold hover:bg-black/5 transition-colors cursor-pointer"
              >
                {t.modals.scannerClose}
              </button>
              <a
                href={getPortalUrl()}
                target="_blank"
                rel="noreferrer"
                className="px-5 py-2.5 rounded-xl bg-[#DC2626] hover:bg-[#991B1B] text-white text-xs font-bold transition-all shadow-sm inline-flex items-center gap-1.5"
              >
                <span>{t.modals.scannerLaunchPortal}</span>
              </a>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
