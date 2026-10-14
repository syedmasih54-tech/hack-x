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
import { getPortalUrl, getDigiLockerUrl } from "./lib/urls";

gsap.registerPlugin(ScrollTrigger);

export type Language = "en" | "hi";

export interface TranslationSchema {
  nav: {
    brand: string;
    taglineDesktop: string;
    taglineMobile: string;
    liveGatewayBadge: string;
    apiDocsBtn: string;
    livePortalBtn: string;
  };
  hero: {
    badge: string;
    title: string;
    subtitle: string;
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
  slaRibbon: {
    actTitle: string;
    slaGuarantee: string;
    escalationNotice: string;
  };
  modals: {
    voiceTitle: string;
    voiceSubtitle: string;
    voiceListening: string;
    voiceSpeakPrompt: string;
    voiceSampleHindi: string;
    voiceSampleEnglish: string;
    voiceClose: string;
    scannerTitle: string;
    scannerSubtitle: string;
    scannerPrompt: string;
    scannerCta: string;
    scannerClose: string;
  };
  footer: {
    sectionsActive: string;
    replayIntro: string;
  };
}

export const TRANSLATIONS: Record<Language, TranslationSchema> = {
  en: {
    nav: {
      brand: "BenefitBridge",
      taglineDesktop: "Citizen welfare case platform",
      taglineMobile: "Welfare platform",
      liveGatewayBadge: "NIC / Live Gateway Connected",
      apiDocsBtn: "API Docs",
      livePortalBtn: "Live Portal",
    },
    hero: {
      badge: "Active Civic Gateway • Statutory Rights & Public Service Guarantee Act 2026",
      title: "Citizen Application & Welfare Modules",
      subtitle:
        "Fully functional civic layer connected to DigiLocker, bilingual voice intake, Indian phonetic OCR comparison, and statutory Right to Public Services SLAs.",
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
          "Speak age, gender, occupation, and name naturally. Powered by bilingual speech processing to auto-populate scheme eligibility requirements.",
        cta: "Bolein aur Aavedan Karein / Speak to Apply",
      },
      documentDoctor: {
        badge: "DBT / PFMS Pre-Verification",
        title: "Document Doctor (Mismatch)",
        description:
          "Detects spelling variations (e.g. Sunita vs Sunitha) across Ration Cards and Bank Passbooks before submission to prevent Direct Benefit Transfer rejections.",
        cta: "Check Discrepancies & Resolve",
      },
    },
    slaRibbon: {
      actTitle: "State Right to Public Services Act:",
      slaGuarantee: "30-Day Mandatory Statutory SLA",
      escalationNotice:
        "Automatic CPGRAMS & CM Helpline legal escalation triggered if statutory government deadlines lapse",
    },
    modals: {
      voiceTitle: "Bilingual Voice Assistance",
      voiceSubtitle: "Whisper AI speech recognition in Hindi & English",
      voiceListening: "Microphone active — Listening for citizen details...",
      voiceSpeakPrompt:
        "Speak naturally. Say: 'Main Sunita Devi hoon, umar 65 varsh, vidhwa pension chahiye' or 'My annual income is 1.2 lakh, student scholarship'.",
      voiceSampleHindi: "हिंदी उदाहरण: 'मेरी उम्र 65 वर्ष है, मैं विधवा पेंशन के लिए आवेदन करना चाहती हूँ।'",
      voiceSampleEnglish: "English Sample: 'I am Amit Kumar, 20-year-old student applying for scholarship.'",
      voiceClose: "Close",
      scannerTitle: "Document Doctor & Phonetic Matcher",
      scannerSubtitle: "In-memory Indian name & DBT account validator",
      scannerPrompt:
        "Pre-scans your Ration Card and Bank Passbook to detect Indian name variations (e.g., Sunita vs Sunitha, Choudhary vs Chaudhary) before submission.",
      scannerCta: "Launch Scanner in Portal",
      scannerClose: "Close",
    },
    footer: {
      sectionsActive: "All 6 Landing Page Sections Deployed & Active",
      replayIntro: "Replay Intro Sequence ↻",
    },
  },
  hi: {
    nav: {
      brand: "बेनिफ़िट-ब्रिज",
      taglineDesktop: "नागरिक जन-कल्याण एवं अधिकार मंच",
      taglineMobile: "जन-कल्याण मंच",
      liveGatewayBadge: "एनआईसी / लाइव गेटवे सक्रिय",
      apiDocsBtn: "एपीआई दस्तावेज़",
      livePortalBtn: "लाइव पोर्टल",
    },
    hero: {
      badge: "सक्रिय नागरिक गेटवे • लोक सेवा गारंटी एवं नागरिक अधिकार पत्र अधिनियम २०२६",
      title: "नागरिक आवेदन एवं जन-कल्याण मॉड्यूल",
      subtitle:
        "डिजीलॉकर, द्विभाषी वॉइस इनटेक, भारतीय ध्वन्यात्मक ओसीआर मिलान और वैधानिक लोक सेवा गारंटी (SLA) से युक्त पूर्णतः स्वचालित प्रणाली।",
    },
    cards: {
      digilocker: {
        badge: "एपीआई सेतु अधिकृत",
        title: "डिजीलॉकर प्रत्यक्ष आवेदन",
        description:
          "सरकारी डिजीलॉकर क्रेडेंशियल्स से जुड़ें। बिना किसी मैन्युअल अपलोड के स्वतः प्रामाणिक राशन कार्ड और आय प्रमाण पत्र प्राप्त करें।",
        cta: "डिजीलॉकर से आवेदन करें (वन-क्लिक)",
      },
      voice: {
        badge: "द्विभाषी व्हिस्पर एआई",
        title: "वॉइस सहायता (हिंदी / English)",
        description:
          "अपनी उम्र, लिंग, व्यवसाय और नाम स्वाभाविक रूप से बोलें। द्विभाषी वॉइस तकनीक द्वारा योजना पात्रता का स्वतः निर्धारण किया जाता है।",
        cta: "बोलें और आवेदन करें / Speak to Apply",
      },
      documentDoctor: {
        badge: "डीबीटी / पीएफएमएस पूर्व-सत्यापन",
        title: "दस्तावेज़ डॉक्टर (नाम वर्तनी मिलान)",
        description:
          "राशन कार्ड और बैंक पासबुक में 'सुनीता बनाम सुनीथा' जैसी वर्तनी विसंगतियों को आवेदन से पूर्व पहचानकर डीबीटी बैंक विफलता को रोकता है।",
        cta: "नाम विसंगति जांचें एवं सुधारें",
      },
    },
    slaRibbon: {
      actTitle: "राज्य लोक सेवा गारंटी अधिनियम:",
      slaGuarantee: "३०-दिवसीय अनिवार्य वैधानिक समय-सीमा",
      escalationNotice:
        "सरकारी समय-सीमा समाप्त होने पर स्वतः सीपीग्राम्स (CPGRAMS) एवं सीएम हेल्पलाइन विधिक अपील सक्रिय",
    },
    modals: {
      voiceTitle: "द्विभाषी वॉइस सहायता",
      voiceSubtitle: "हिंदी एवं अंग्रेजी में व्हिस्पर एआई वाणी अभिज्ञान",
      voiceListening: "माइक्रोफ़ोन सक्रिय — लाभार्थी का विवरण सुना जा रहा है...",
      voiceSpeakPrompt:
        "स्वाभाविक रूप से बोलें। कहें: 'मैं सुनीता देवी हूँ, उम्र 65 वर्ष, मुझे विधवा पेंशन योजना का लाभ चाहिए' या 'मेरी आय 1.2 लाख है, छात्रवृत्ति आवेदन करना है'।",
      voiceSampleHindi: "हिंदी उदाहरण: 'मेरी उम्र 65 वर्ष है, मैं विधवा पेंशन के लिए आवेदन करना चाहती हूँ।'",
      voiceSampleEnglish: "English Sample: 'I am Amit Kumar, 20-year-old student applying for scholarship.'",
      voiceClose: "बंद करें",
      scannerTitle: "दस्तावेज़ डॉक्टर एवं वर्तनी विश्लेषक",
      scannerSubtitle: "इन-मेमोरी भारतीय नाम व डीबीटी खाता सत्यापन",
      scannerPrompt:
        "राशन कार्ड और बैंक पासबुक के बीच 'सुनीता बनाम सुनीथा', 'चौधरी बनाम चौधरी' जैसी सूक्ष्म विसंगतियों को पकड़कर बैंक रिजेक्शन से बचाता है।",
      scannerCta: "लाइव पोर्टल में स्कैनर खोलें",
      scannerClose: "बंद करें",
    },
    footer: {
      sectionsActive: "सभी 6 मुख्य अनुभाग सक्रिय एवं उपलब्ध हैं",
      replayIntro: "सिनेमैटिक इंट्रो पुनः देखें ↻",
    },
  },
};

const getApiDocsUrl = (): string => {
  if (typeof window === "undefined") return "/docs";
  if (window.location.hostname === "localhost" || window.location.hostname === "127.0.0.1") {
    return "http://127.0.0.1:8000/docs";
  }
  return "/docs";
};

export default function App() {
  const [isIntroActive, setIsIntroActive] = useState<boolean>(true);

  // Requirement 3: Persist selected language in localStorage under 'benefitbridge_lang'
  const [selectedLanguage, setSelectedLanguage] = useState<Language>(() => {
    if (typeof window !== "undefined") {
      const saved = localStorage.getItem("benefitbridge_lang");
      if (saved === "en" || saved === "hi") {
        return saved;
      }
    }
    return "en";
  });

  // Modal interactive states for Voice & Scanner prompts
  const [activeModal, setActiveModal] = useState<"none" | "voice" | "scanner">("none");

  const underneathWordmarkRef = useRef<HTMLDivElement | null>(null);
  const lenisRef = useRef<Lenis | null>(null);

  // Sync selected language with localStorage and document.documentElement.lang
  useEffect(() => {
    if (typeof window !== "undefined") {
      localStorage.setItem("benefitbridge_lang", selectedLanguage);
      document.documentElement.lang = selectedLanguage;
    }
  }, [selectedLanguage]);

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

  // Requirement 2: Dynamically bound translation dictionary instance
  const t = TRANSLATIONS[selectedLanguage];

  return (
    <div className="min-h-screen bg-[#FCFBF9] text-[#1A0F12] font-body selection:bg-[#C41528] selection:text-white relative">
      {/* ---------------- SECTION 1: INTRO / PRELOADER HERO (4-Stage Startup) ---------------- */}
      {isIntroActive && (
        <Section1Intro
          onComplete={() => setIsIntroActive(false)}
          underneathWordmarkRef={underneathWordmarkRef}
        />
      )}

      {/* ---------------- TOP FLOATING NAVIGATION (Red & Cream Glassmorphism) ---------------- */}
      <header className="sticky top-0 z-40 bg-[#FCFBF9]/90 backdrop-blur-md border-b border-[#1A0F12]/10 transition-all shadow-xs">
        <div className="w-full max-w-7xl mx-auto px-4 sm:px-8 md:px-12 h-14 flex items-center justify-between text-[11px] font-sans text-[#1A0F12]/80">
          <div className="flex items-center gap-2 sm:gap-3">
            <span className="font-bold tracking-tight text-[#8E1B2B] text-xs sm:text-sm">
              {t.nav.brand}
            </span>
            <span className="text-[#1A0F12]/25">/</span>
            <span className="hidden sm:inline font-medium text-[#1A0F12]/75">
              {t.nav.taglineDesktop}
            </span>
            <span className="sm:hidden font-medium text-[#1A0F12]/75">
              {t.nav.taglineMobile}
            </span>
          </div>

          <div className="flex items-center gap-2.5 sm:gap-4">
            {/* Live Gateway Badge */}
            <div className="hidden lg:flex items-center gap-1.5 px-2.5 py-0.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-[10px] font-medium">
              <span className="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-pulse" />
              <span>{t.nav.liveGatewayBadge}</span>
            </div>

            {/* Language Switcher Button Group */}
            <div
              className="flex items-center border border-[#1A0F12]/15 rounded-full p-0.5 bg-white/80 shadow-2xs backdrop-blur-xs text-[11px]"
              role="group"
              aria-label="Language selection"
            >
              <button
                type="button"
                onClick={() => setSelectedLanguage("en")}
                className={`px-2.5 py-0.5 rounded-full font-semibold transition-all cursor-pointer ${
                  selectedLanguage === "en"
                    ? "bg-[#C41528] text-white shadow-xs"
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
                className={`px-2.5 py-0.5 rounded-full font-semibold transition-all cursor-pointer ${
                  selectedLanguage === "hi"
                    ? "bg-[#C41528] text-white shadow-xs"
                    : "text-[#1A0F12]/70 hover:text-[#1A0F12]"
                }`}
                aria-pressed={selectedLanguage === "hi"}
                aria-label="भाषा हिंदी में बदलें"
              >
                हिंदी
              </button>
            </div>

            {/* API Documentation Link */}
            <a
              href={getApiDocsUrl()}
              target="_blank"
              rel="noreferrer"
              className="hidden sm:inline-flex items-center gap-1 text-[11px] font-semibold text-[#1A0F12]/75 hover:text-[#C41528] transition-colors"
            >
              <span>{t.nav.apiDocsBtn}</span>
              <span aria-hidden="true">↗</span>
            </a>

            {/* Live Portal Link */}
            <a
              href={getPortalUrl()}
              target="_blank"
              rel="noreferrer"
              className="inline-flex items-center gap-1 px-3 py-1 rounded-full bg-[#C41528]/10 hover:bg-[#C41528]/15 border border-[#C41528]/25 text-[11px] font-semibold text-[#8E1B2B] hover:text-[#C41528] transition-all"
            >
              <span>{t.nav.livePortalBtn}</span>
              <span aria-hidden="true">↗</span>
            </a>
          </div>
        </div>
      </header>

      {/* ---------------- SECTION 2: STATEMENT (WHITE) ---------------- */}
      <Section2Statement underneathWordmarkRef={underneathWordmarkRef} />

      {/* ---------------- SECTION 3: FOCUS (SKY BLUE GRADIENT, PINNED) ---------------- */}
      <Section3Focus />

      {/* ---------------- SECTION 4: THE JOURNEY TICKETS (PINNED, 3D FLY-IN) ---------------- */}
      <Section4JourneyTickets />

      {/* ---------------- SECTION 5: WHO DECIDES (RED FULL-BLEED) ---------------- */}
      <Section5WhoDecides />

      {/* ---------------- HERO / PRESERVED WORKING MODULES (Red & Cream Glassmorphism) ---------------- */}
      <section className="w-full max-w-7xl mx-auto px-6 sm:px-12 py-20 border-t border-[#1A0F12]/10 space-y-12 bg-[#FCFBF9]">
        {/* Section Header */}
        <div className="flex flex-col sm:flex-row sm:items-end justify-between gap-4">
          <div>
            <span className="text-[10px] font-mono uppercase tracking-widest text-[#C41528] font-bold block mb-1.5">
              {t.hero.badge}
            </span>
            <h3 className="text-2xl sm:text-3xl font-extrabold tracking-tight text-[#1A0F12]">
              {t.hero.title}
            </h3>
          </div>
          <p className="text-xs text-[#1A0F12]/75 max-w-md font-light leading-relaxed">
            {t.hero.subtitle}
          </p>
        </div>

        {/* 3 Core Interactive Cards (DigiLocker, Voice, Document Doctor) */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {/* 1. DigiLocker Direct Apply */}
          <div className="border border-[#1A0F12]/15 rounded-2xl p-6 bg-white/90 backdrop-blur-sm hover:border-[#C41528]/50 hover:shadow-lg transition-all flex flex-col justify-between group">
            <div>
              <div className="flex items-center justify-between mb-4">
                <div className="w-10 h-10 rounded-xl border border-[#C41528]/20 bg-[#C41528]/5 flex items-center justify-center text-[#C41528] group-hover:bg-[#C41528]/10 group-hover:scale-105 transition-all">
                  <svg className="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M19.35 10.04C18.67 6.59 15.64 4 12 4 9.11 4 6.6 5.64 5.35 8.04 2.34 8.36 0 10.91 0 14c0 3.31 2.69 6 6 6h13c2.76 0 5-2.24 5-5 0-2.64-2.05-4.78-4.65-4.96zM14 13v4h-4v-4H7l5-5 5 5h-3z" />
                  </svg>
                </div>
                <span className="text-[9px] font-mono uppercase px-2 py-0.5 rounded-md bg-[#8E1B2B]/10 text-[#8E1B2B] font-semibold border border-[#8E1B2B]/15">
                  {t.cards.digilocker.badge}
                </span>
              </div>
              <h4 className="text-lg font-bold text-[#1A0F12] mb-2 group-hover:text-[#8E1B2B] transition-colors">
                {t.cards.digilocker.title}
              </h4>
              <p className="text-xs text-[#1A0F12]/75 leading-relaxed font-light">
                {t.cards.digilocker.description}
              </p>
            </div>
            <a
              href={getDigiLockerUrl()}
              target="_blank"
              rel="noreferrer"
              className="mt-6 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl bg-[#C41528] hover:bg-[#8E1B2B] text-white text-xs font-semibold shadow-sm transition-all hover:gap-3"
            >
              <span>{t.cards.digilocker.cta}</span>
              <span aria-hidden="true">→</span>
            </a>
          </div>

          {/* 2. Voice Assistance */}
          <div className="border border-[#1A0F12]/15 rounded-2xl p-6 bg-white/90 backdrop-blur-sm hover:border-[#C41528]/50 hover:shadow-lg transition-all flex flex-col justify-between group">
            <div>
              <div className="flex items-center justify-between mb-4">
                <div className="w-10 h-10 rounded-xl border border-[#8E1B2B]/20 bg-[#8E1B2B]/5 flex items-center justify-center text-[#8E1B2B] group-hover:bg-[#8E1B2B]/10 group-hover:scale-105 transition-all">
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2"
                      d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z"
                    />
                  </svg>
                </div>
                <span className="text-[9px] font-mono uppercase px-2 py-0.5 rounded-md bg-[#C41528]/10 text-[#C41528] font-semibold border border-[#C41528]/15">
                  {t.cards.voice.badge}
                </span>
              </div>
              <h4 className="text-lg font-bold text-[#1A0F12] mb-2 group-hover:text-[#8E1B2B] transition-colors">
                {t.cards.voice.title}
              </h4>
              <p className="text-xs text-[#1A0F12]/75 leading-relaxed font-light">
                {t.cards.voice.description}
              </p>
            </div>
            <button
              type="button"
              onClick={() => setActiveModal("voice")}
              className="mt-6 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl border border-[#C41528]/30 hover:border-[#C41528] bg-white hover:bg-[#C41528]/5 text-[#8E1B2B] hover:text-[#C41528] text-xs font-semibold transition-all cursor-pointer shadow-2xs"
            >
              <span>{t.cards.voice.cta}</span>
              <span aria-hidden="true">🎙</span>
            </button>
          </div>

          {/* 3. Document Doctor */}
          <div className="border border-[#1A0F12]/15 rounded-2xl p-6 bg-white/90 backdrop-blur-sm hover:border-[#C41528]/50 hover:shadow-lg transition-all flex flex-col justify-between group">
            <div>
              <div className="flex items-center justify-between mb-4">
                <div className="w-10 h-10 rounded-xl border border-[#1A0F12]/20 bg-[#1A0F12]/5 flex items-center justify-center text-[#1A0F12] group-hover:bg-[#C41528]/10 group-hover:text-[#C41528] group-hover:scale-105 transition-all">
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2"
                      d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
                    />
                  </svg>
                </div>
                <span className="text-[9px] font-mono uppercase px-2 py-0.5 rounded-md bg-amber-50 text-amber-900 font-semibold border border-amber-200">
                  {t.cards.documentDoctor.badge}
                </span>
              </div>
              <h4 className="text-lg font-bold text-[#1A0F12] mb-2 group-hover:text-[#8E1B2B] transition-colors">
                {t.cards.documentDoctor.title}
              </h4>
              <p className="text-xs text-[#1A0F12]/75 leading-relaxed font-light">
                {t.cards.documentDoctor.description}
              </p>
            </div>
            <button
              type="button"
              onClick={() => setActiveModal("scanner")}
              className="mt-6 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl border border-[#1A0F12]/20 hover:border-[#C41528] bg-white hover:bg-[#C41528]/5 text-[#1A0F12] hover:text-[#C41528] text-xs font-semibold transition-all cursor-pointer shadow-2xs"
            >
              <span>{t.cards.documentDoctor.cta}</span>
              <span aria-hidden="true">→</span>
            </button>
          </div>
        </div>

        {/* Statutory SLA Guarantee Ribbon */}
        <div className="p-4 sm:p-5 rounded-2xl border border-[#1A0F12]/15 bg-white/95 backdrop-blur-md flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 text-xs text-[#1A0F12]/85 shadow-sm">
          <div className="flex items-center gap-2.5">
            <span className="w-2.5 h-2.5 rounded-full bg-[#C41528] animate-pulse shrink-0" />
            <span>
              {t.slaRibbon.actTitle}{" "}
              <strong className="text-[#1A0F12] font-bold">
                {t.slaRibbon.slaGuarantee}
              </strong>
            </span>
          </div>
          <span className="text-[#8E1B2B] font-semibold text-[11px] bg-[#8E1B2B]/5 px-3 py-1 rounded-full border border-[#8E1B2B]/15">
            {t.slaRibbon.escalationNotice}
          </span>
        </div>

        {/* Replay trigger and section footer */}
        <div className="pt-2 flex flex-col sm:flex-row items-center justify-between gap-2 text-[11px] text-[#1A0F12]/60 border-t border-[#1A0F12]/10">
          <span>{t.footer.sectionsActive}</span>
          <button
            type="button"
            onClick={() => {
              sessionStorage.removeItem("bb_intro_seen");
              setIsIntroActive(true);
            }}
            className="text-[#C41528] hover:text-[#8E1B2B] hover:underline cursor-pointer font-semibold transition-colors"
          >
            {t.footer.replayIntro}
          </button>
        </div>
      </section>

      {/* ---------------- SECTION 6: CLOSING (WHITE & GIANT CROPPED WORDMARK) ---------------- */}
      <Section6Closing />

      {/* ---------------- INTERACTIVE MODAL 1: VOICE ASSISTANCE ---------------- */}
      {activeModal === "voice" && (
        <div
          className="fixed inset-0 z-50 bg-[#1A0F12]/60 backdrop-blur-xs flex items-center justify-center p-4"
          role="dialog"
          aria-modal="true"
          aria-labelledby="voice-modal-title"
        >
          <div className="bg-[#FCFBF9] border border-[#C41528]/30 rounded-3xl p-6 sm:p-8 max-w-lg w-full shadow-2xl space-y-5 animate-in fade-in zoom-in-95 duration-200">
            <div className="flex items-start justify-between">
              <div className="flex items-center gap-3">
                <div className="w-10 h-10 rounded-2xl bg-[#C41528]/10 text-[#C41528] flex items-center justify-center text-xl">
                  🎙
                </div>
                <div>
                  <h3 id="voice-modal-title" className="font-bold text-lg text-[#1A0F12]">
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
                className="text-[#1A0F12]/40 hover:text-[#1A0F12] text-xl font-bold cursor-pointer p-1"
                aria-label="Close dialog"
              >
                ×
              </button>
            </div>

            <div className="p-4 rounded-2xl bg-white border border-[#1A0F12]/10 space-y-3">
              <div className="flex items-center gap-2 text-xs font-semibold text-[#8E1B2B]">
                <span className="w-2 h-2 rounded-full bg-red-600 animate-ping" />
                <span>{t.modals.voiceListening}</span>
              </div>
              <p className="text-xs text-[#1A0F12]/80 leading-relaxed font-light">
                {t.modals.voiceSpeakPrompt}
              </p>
              <div className="pt-2 border-t border-[#1A0F12]/5 space-y-1.5 text-[11px] text-[#1A0F12]/65 font-mono">
                <div className="p-2 rounded-lg bg-[#FCFBF9] border border-[#1A0F12]/5">
                  {t.modals.voiceSampleHindi}
                </div>
                <div className="p-2 rounded-lg bg-[#FCFBF9] border border-[#1A0F12]/5">
                  {t.modals.voiceSampleEnglish}
                </div>
              </div>
            </div>

            <div className="flex justify-end gap-3 pt-2">
              <button
                type="button"
                onClick={() => setActiveModal("none")}
                className="px-5 py-2.5 rounded-xl bg-[#C41528] hover:bg-[#8E1B2B] text-white text-xs font-semibold transition-colors cursor-pointer"
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
          <div className="bg-[#FCFBF9] border border-[#1A0F12]/20 rounded-3xl p-6 sm:p-8 max-w-lg w-full shadow-2xl space-y-5 animate-in fade-in zoom-in-95 duration-200">
            <div className="flex items-start justify-between">
              <div className="flex items-center gap-3">
                <div className="w-10 h-10 rounded-2xl bg-[#8E1B2B]/10 text-[#8E1B2B] flex items-center justify-center text-xl">
                  🔍
                </div>
                <div>
                  <h3 id="scanner-modal-title" className="font-bold text-lg text-[#1A0F12]">
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
                className="text-[#1A0F12]/40 hover:text-[#1A0F12] text-xl font-bold cursor-pointer p-1"
                aria-label="Close dialog"
              >
                ×
              </button>
            </div>

            <div className="p-4 rounded-2xl bg-white border border-[#1A0F12]/10 space-y-2.5">
              <div className="flex items-center gap-2 text-xs font-semibold text-emerald-800">
                <span className="w-2 h-2 rounded-full bg-emerald-500" />
                <span>95% Phonetic Name Distance Engine Ready</span>
              </div>
              <p className="text-xs text-[#1A0F12]/80 leading-relaxed font-light">
                {t.modals.scannerPrompt}
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
                className="px-5 py-2.5 rounded-xl bg-[#C41528] hover:bg-[#8E1B2B] text-white text-xs font-semibold transition-colors inline-flex items-center gap-1.5"
              >
                <span>{t.modals.scannerCta}</span>
                <span aria-hidden="true">↗</span>
              </a>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
