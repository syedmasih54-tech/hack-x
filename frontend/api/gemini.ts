type RequestLike = {
  method?: string
  headers: Record<string, string | string[] | undefined>
  body?: unknown
}
type ResponseLike = {
  status: (code: number) => ResponseLike
  json: (body: unknown) => void
  setHeader: (key: string, value: string) => void
}

type RateLimitEntry = {
  count: number
  reset: number
}

const requests = new Map<string, RateLimitEntry>()
const WINDOW = 60_000
const LIMIT = 8

function limited(ip: string) {
  const now = Date.now()
  const entry = requests.get(ip)
  if (!entry || entry.reset < now) {
    requests.set(ip, { count: 1, reset: now + WINDOW })
    return false
  }
  entry.count += 1
  return entry.count > LIMIT
}

export default async function handler(req: RequestLike, res: ResponseLike) {
  res.setHeader("Cache-Control", "no-store")
  if (req.method !== "POST")
    return res.status(405).json({ error: "Method not allowed" })
  const ip = String(req.headers["x-forwarded-for"] ?? "local").split(",")[0]
  if (limited(ip))
    return res.status(429).json({ error: "कृपया एक मिनट बाद फिर कोशिश करें।" })
  if (!process.env.GEMINI_API_KEY)
    return res.status(503).json({ error: "AI सेवा कॉन्फ़िगर नहीं है।" })

  const body = req.body as {
    type?: string
    image?: string
    mimeType?: string
    facts?: Record<string, unknown>
  }
  let contents: unknown
  if (
    body?.type === "document" &&
    typeof body.image === "string" &&
    body.image.length < 10_000_000
  ) {
    contents = [
      {
        parts: [
          {
            text: 'Read only the person\'s name. Never extract or return ID, account, phone, or other numbers. Return ONLY JSON: {"name":"...","confidence":0.0}',
          },
          {
            inline_data: {
              mime_type: body.mimeType || "image/jpeg",
              data: body.image.replace(/^data:[^;]+;base64,/, ""),
            },
          },
        ],
      },
    ]
  } else if (
    body?.type === "complaint" &&
    body.facts &&
    JSON.stringify(body.facts).length < 3000
  ) {
    contents = [
      {
        parts: [
          {
            text: `Use ONLY the JSON facts provided. Do not decide eligibility. Do not invent documents, deadlines, laws, or government rules. Do not claim fraud. Write a polite complaint in simple Hindi, maximum 120 words. If information is missing, say it is missing.\nJSON facts:\n${JSON.stringify(body.facts)}`,
          },
        ],
      },
    ]
  } else {
    return res.status(400).json({ error: "Invalid request" })
  }

  try {
    const response = await fetch(
      `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${process.env.GEMINI_API_KEY}`,
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          contents,
          generationConfig: {
            temperature: 0.1,
            responseMimeType:
              body.type === "document" ? "application/json" : "text/plain",
          },
        }),
      },
    )
    if (!response.ok)
      return res.status(502).json({ error: "AI सेवा अभी उपलब्ध नहीं है।" })
    const data = (await response.json()) as {
      candidates?: Array<{ content?: { parts?: Array<{ text?: string }> } }>
    }
    const text = data.candidates?.[0]?.content?.parts?.[0]?.text
    if (!text) return res.status(502).json({ error: "AI से उत्तर नहीं मिला।" })
    if (body.type === "document") {
      const parsed = JSON.parse(text)
      return res.status(200).json({
        name: String(parsed.name || ""),
        confidence: Math.max(0, Math.min(1, Number(parsed.confidence) || 0)),
      })
    }
    return res.status(200).json({ draft: text.slice(0, 1500) })
  } catch {
    return res
      .status(502)
      .json({ error: "AI सेवा अभी उपलब्ध नहीं है। विवरण स्वयं लिखें।" })
  }
}
