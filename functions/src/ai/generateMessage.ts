/* eslint-disable */
import { onCall, HttpsError } from "firebase-functions/v2/https";
import crypto from "crypto";

function asString(v: unknown): string {
  return typeof v === "string" ? v : v != null ? String(v) : "";
}

function nowMs(): number {
  return Date.now();
}

type ChatMessage = { role: "system" | "user" | "assistant"; content: string };

function isValidRole(r: unknown): r is ChatMessage["role"] {
  return r === "system" || r === "user" || r === "assistant";
}

function normalizeMessages(input: unknown): ChatMessage[] {
  if (!Array.isArray(input)) return [];

  const out: ChatMessage[] = [];
  for (const m of input) {
    const role = m?.role;
    const content = asString(m?.content).trim();

    if (!isValidRole(role)) continue;
    if (!content) continue;

    // Hard limit per message to avoid abuse / huge payloads
    const clipped = content.length > 4000 ? content.slice(0, 4000) : content;

    out.push({ role, content: clipped });
  }

  return out;
}

function mapOpenAiStatusToHttpsError(status: number): HttpsError {
  // Keep these coarse and stable for client mapping
  if (status === 401 || status === 403) {
    return new HttpsError("failed-precondition", "ai_misconfigured");
  }
  if (status === 429) {
    return new HttpsError("resource-exhausted", "ai_rate_limited");
  }
  if (status >= 500) {
    return new HttpsError("unavailable", "ai_unavailable");
  }
  return new HttpsError("internal", "ai_error");
}

export const generateMessage = onCall(
  {
    region: "us-central1",
    timeoutSeconds: 60,
    secrets: ["OPENAI_API_KEY"],
    enforceAppCheck: false, // Re-enable after Google Play approves the app
  },
  async (req) => {
    const uid = req.auth?.uid;
    if (!uid) throw new HttpsError("unauthenticated", "Login required");

    const { messages, localeTag, platform, requestId } = req.data ?? {};

    // Slice requestId to prevent oversized log entries from malicious clients
    const rid = asString(requestId).trim().slice(0, 128) || crypto.randomUUID();
    const loc = asString(localeTag).trim() || "en";
    const plat = asString(platform).trim() || "unknown";

    const msgList = normalizeMessages(messages);
    if (msgList.length === 0) {
      throw new HttpsError("invalid-argument", "Missing messages");
    }

    // Guard: require a system message first (keeps behavior consistent)
    if (msgList[0].role !== "system") {
      throw new HttpsError("invalid-argument", "First message must be system");
    }

    // Total content limit
    const totalChars = msgList.reduce((sum, m) => sum + m.content.length, 0);
    if (totalChars > 12000) {
      throw new HttpsError("invalid-argument", "Messages too large");
    }

    const apiKey = (process.env.OPENAI_API_KEY ?? "").trim();
    if (!apiKey) throw new HttpsError("failed-precondition", "Missing OPENAI key");

    console.log("[AI] request", {
      uid,
      rid,
      localeTag: loc,
      platform: plat,
      msgCount: msgList.length,
      totalChars,
      atMs: nowMs(),
    });

    // OpenAI call with a hard timeout (avoid hanging)
    const controller = new AbortController();
    const timeout = setTimeout(() => controller.abort(), 25_000);

    try {
      const res = await fetch("https://api.openai.com/v1/chat/completions", {
        method: "POST",
        signal: controller.signal,
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${apiKey}`,
        },
        body: JSON.stringify({
          model: "gpt-4o-mini",
          messages: msgList,
          temperature: 1.0,
          max_tokens: 320,
        }),
      });

      if (!res.ok) {
        const bodyText = await res.text().catch(() => "");
        console.error("[AI] OpenAI error", {
          uid,
          rid,
          status: res.status,
          body: bodyText.slice(0, 800),
        });
        throw mapOpenAiStatusToHttpsError(res.status);
      }

      const data: any = await res.json();
      const content = asString(data?.choices?.[0]?.message?.content).trim();

      if (!content) {
        console.error("[AI] Empty content from OpenAI", { uid, rid });
        throw new HttpsError("internal", "ai_error");
      }

      console.log("[AI] success", {
        uid,
        rid,
        outLen: content.length,
        atMs: nowMs(),
      });

      // IMPORTANT: credits are consumed ONLY by checkAndConsumePrompt
      return {
        text: content,
        requestId: rid,
      };
    } catch (e: unknown) {
      // If we threw an HttpsError, rethrow as-is
      if (e instanceof HttpsError) throw e;

      const msg = String((e as any)?.message ?? e);

      // Abort / timeout
      if (msg.toLowerCase().includes("aborted") || msg.toLowerCase().includes("abort")) {
        console.error("[AI] timeout/aborted", { uid, rid });
        throw new HttpsError("deadline-exceeded", "ai_timeout");
      }

      console.error("[AI] unexpected error", { uid, rid, err: msg });
      throw new HttpsError("internal", "ai_error");
    } finally {
      clearTimeout(timeout);
    }
  },
);