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

gsap.registerPlugin(ScrollTrigger);

export default function App() {
  const [isIntroActive, setIsIntroActive] = useState<boolean>(true);
  const [selectedLanguage, setSelectedLanguage] = useState<"en" | "hi">("en");
  const underneathWordmarkRef = useRef<HTMLDivElement | null>(null);
  const lenisRef = useRef<Lenis | null>(null);

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

  return (
    <div className="min-h-screen bg-white text-[#1A0F12] font-body selection:bg-[#C41528] selection:text-white relative">
      {/* ---------------- SECTION 1: INTRO / PRELOADER HERO ---------------- */}
      {isIntroActive && (
        <Section1Intro
          onComplete={() => setIsIntroActive(false)}
          underneathWordmarkRef={underneathWordmarkRef}
        />
      )}

      {/* ---------------- TOP FLOATING NAVIGATION ---------------- */}
      <header className="sticky top-0 z-40 bg-white/90 backdrop-blur-md border-b border-[#1A0F12]/10 transition-all">
        <div className="w-full max-w-7xl mx-auto px-6 sm:px-12 h-14 flex items-center justify-between text-[11px] font-sans text-[#1A0F12]/75">
          <div className="flex items-center gap-3">
            <span className="font-semibold text-[#8E1B2B]">BenefitBridge</span>
            <span className="text-[#1A0F12]/30">/</span>
            <span className="hidden sm:inline">Citizen welfare case platform</span>
            <span className="sm:hidden">Welfare platform</span>
          </div>

          <div className="flex items-center gap-4">
            {/* Language Switcher */}
            <div className="flex items-center border border-[#1A0F12]/15 rounded-full p-0.5 bg-white text-[11px]">
              <button
                onClick={() => setSelectedLanguage("en")}
                className={`px-2.5 py-0.5 rounded-full font-medium transition-all cursor-pointer ${
                  selectedLanguage === "en"
                    ? "bg-[#C41528] text-white"
                    : "text-[#1A0F12]/70 hover:text-[#1A0F12]"
                }`}
                aria-label="Switch language to English"
              >
                EN
              </button>
              <button
                onClick={() => setSelectedLanguage("hi")}
                className={`px-2.5 py-0.5 rounded-full font-medium transition-all cursor-pointer ${
                  selectedLanguage === "hi"
                    ? "bg-[#C41528] text-white"
                    : "text-[#1A0F12]/70 hover:text-[#1A0F12]"
                }`}
                aria-label="Switch language to Hindi"
              >
                हिंदी
              </button>
            </div>

            <a
              href="http://127.0.0.1:8000/"
              target="_blank"
              rel="noreferrer"
              className="inline-flex items-center gap-1 text-[11px] font-medium text-[#8E1B2B] hover:text-[#C41528] transition-colors"
            >
              <span>Live Portal (8000)</span>
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

      {/* ---------------- PRESERVED WORKING FEATURES & DASHBOARD MODULES ---------------- */}
      <section className="w-full max-w-7xl mx-auto px-6 sm:px-12 py-20 border-t border-[#1A0F12]/10 space-y-12 bg-[#FCFBF9]">
        <div className="flex flex-col sm:flex-row sm:items-end justify-between gap-4">
          <div>
            <span className="text-[10px] font-mono uppercase tracking-widest text-[#C41528] block mb-1">
              Active Civic Gateway
            </span>
            <h3 className="text-2xl sm:text-3xl font-bold tracking-tight text-[#1A0F12]">
              Citizen Application Modules
            </h3>
          </div>
          <p className="text-xs text-[#1A0F12]/60 max-w-md font-light">
            Fully functional integration connected to DigiLocker, OCR document comparison, and state Right to Public Services SLAs.
          </p>
        </div>

        {/* 3 Core Interactive Cards (DigiLocker, Voice, Document Doctor) */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {/* 1. DigiLocker Direct Apply */}
          <div className="border border-[#1A0F12]/15 rounded-2xl p-6 bg-white hover:border-[#C41528]/50 transition-colors flex flex-col justify-between group shadow-sm">
            <div>
              <div className="w-10 h-10 rounded-xl border border-[#1A0F12]/15 flex items-center justify-center text-[#C41528] mb-4 group-hover:border-[#C41528]/40 transition-colors">
                <svg className="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M19.35 10.04C18.67 6.59 15.64 4 12 4 9.11 4 6.6 5.64 5.35 8.04 2.34 8.36 0 10.91 0 14c0 3.31 2.69 6 6 6h13c2.76 0 5-2.24 5-5 0-2.64-2.05-4.78-4.65-4.96zM14 13v4h-4v-4H7l5-5 5 5h-3z" />
                </svg>
              </div>
              <h4 className="text-lg font-bold text-[#1A0F12] mb-1.5">
                DigiLocker Direct Apply
              </h4>
              <p className="text-xs text-[#1A0F12]/70 leading-relaxed font-light">
                Connect government-verified DigiLocker credentials. Pull authentic Ration Cards and Income Certificates automatically with zero manual upload friction.
              </p>
            </div>
            <a
              href="http://127.0.0.1:8000/auth/digilocker/login"
              target="_blank"
              rel="noreferrer"
              className="mt-6 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl bg-[#C41528] hover:bg-[#8E1B2B] text-white text-xs font-semibold transition-colors"
            >
              <span>Connect DigiLocker</span>
              <span aria-hidden="true">→</span>
            </a>
          </div>

          {/* 2. Voice Assistance */}
          <div className="border border-[#1A0F12]/15 rounded-2xl p-6 bg-white hover:border-[#C41528]/50 transition-colors flex flex-col justify-between group shadow-sm">
            <div>
              <div className="w-10 h-10 rounded-xl border border-[#1A0F12]/15 flex items-center justify-center text-[#8E1B2B] mb-4 group-hover:border-[#C41528]/40 transition-colors">
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z" />
                </svg>
              </div>
              <h4 className="text-lg font-bold text-[#1A0F12] mb-1.5">
                Voice Input (हिंदी / EN)
              </h4>
              <p className="text-xs text-[#1A0F12]/70 leading-relaxed font-light">
                Speak age, gender, occupation, and name naturally. Powered by Whisper speech processing to auto-populate scheme requirements.
              </p>
            </div>
            <button
              onClick={() => alert("Voice input activated. Speak beneficiary details into the microphone.")}
              className="mt-6 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl border border-[#1A0F12]/20 hover:border-[#C41528] text-[#8E1B2B] hover:text-[#C41528] text-xs font-semibold transition-colors cursor-pointer"
            >
              <span>Activate Voice Input</span>
              <span aria-hidden="true">🎙</span>
            </button>
          </div>

          {/* 3. Document Doctor */}
          <div className="border border-[#1A0F12]/15 rounded-2xl p-6 bg-white hover:border-[#C41528]/50 transition-colors flex flex-col justify-between group shadow-sm">
            <div>
              <div className="w-10 h-10 rounded-xl border border-[#1A0F12]/15 flex items-center justify-center text-[#1A0F12] mb-4 group-hover:border-[#C41528]/40 transition-colors">
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
              </div>
              <h4 className="text-lg font-bold text-[#1A0F12] mb-1.5">
                Document Doctor (Mismatch)
              </h4>
              <p className="text-xs text-[#1A0F12]/70 leading-relaxed font-light">
                Detects spelling variations (e.g. <i>Sunita</i> vs <i>Sunitha</i>) before submission to prevent Direct Benefit Transfer bank delays.
              </p>
            </div>
            <a
              href="http://127.0.0.1:8000/"
              target="_blank"
              rel="noreferrer"
              className="mt-6 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl border border-[#1A0F12]/20 hover:border-[#C41528] text-[#1A0F12] hover:text-[#C41528] text-xs font-semibold transition-colors"
            >
              <span>Check Discrepancies</span>
              <span aria-hidden="true">→</span>
            </a>
          </div>
        </div>

        {/* Statutory SLA Guarantee Ribbon */}
        <div className="p-4 rounded-xl border border-[#1A0F12]/15 bg-white flex flex-col sm:flex-row items-center justify-between gap-3 text-xs text-[#1A0F12]/80 shadow-xs">
          <div className="flex items-center gap-2.5">
            <span className="w-2 h-2 rounded-full bg-[#C41528] animate-pulse" />
            <span>
              State Right to Public Services Act:{" "}
              <strong className="text-[#1A0F12] font-semibold">
                30-Day Mandatory Statutory SLA
              </strong>
            </span>
          </div>
          <span className="text-[#8E1B2B] font-medium text-[11px]">
            Automatic CPGRAMS escalation triggered if government deadlines lapse
          </span>
        </div>

        {/* Replay trigger */}
        <div className="pt-4 flex items-center justify-between text-[11px] text-[#1A0F12]/50">
          <span>All 6 Landing Page Sections Deployed & Active</span>
          <button
            onClick={() => {
              sessionStorage.removeItem("bb_intro_seen");
              setIsIntroActive(true);
            }}
            className="text-[#C41528] hover:underline cursor-pointer font-medium"
          >
            Replay Intro Sequence ↻
          </button>
        </div>
      </section>

      {/* ---------------- SECTION 6: CLOSING (WHITE & GIANT CROPPED WORDMARK) ---------------- */}
      <Section6Closing />
    </div>
  );
}
