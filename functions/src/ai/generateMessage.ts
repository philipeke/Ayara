/* eslint-disable */
import { onCall, HttpsError } from "firebase-functions/v2/https";
import crypto from "crypto";

// ─── Types ────────────────────────────────────────────────────────────────────

type ChatMessage = { role: "system" | "user" | "assistant"; content: string };

type AiProvider = "openai" | "claude";

// ─── Helpers ──────────────────────────────────────────────────────────────────

function asString(v: unknown): string {
  return typeof v === "string" ? v : v != null ? String(v) : "";
}

function nowMs(): number {
  return Date.now();
}

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

// ─── Provider: OpenAI ─────────────────────────────────────────────────────────

/**
 * Returns the response text, or throws:
 *   - HttpsError with code "failed-precondition" for auth failures (no fallback)
 *   - HttpsError with code "resource-exhausted" / "unavailable" for retriable failures
 *   - HttpsError with code "deadline-exceeded" for timeouts
 */
async function callOpenAI(
  apiKey: string,
  msgList: ChatMessage[],
  uid: string,
  rid: string,
): Promise<string> {
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
      console.error("[AI/OpenAI] error", {
        uid,
        rid,
        status: res.status,
        body: bodyText.slice(0, 400),
      });

      // Auth failures are not retriable — surface immediately
      if (res.status === 401 || res.status === 403) {
        throw new HttpsError("failed-precondition", "ai_misconfigured");
      }
      if (res.status === 429) {
        throw new HttpsError("resource-exhausted", "ai_rate_limited");
      }
      // 5xx
      throw new HttpsError("unavailable", "ai_unavailable");
    }

    const data: any = await res.json();
    const content = asString(data?.choices?.[0]?.message?.content).trim();

    if (!content) {
      console.error("[AI/OpenAI] empty content", { uid, rid });
      throw new HttpsError("internal", "ai_error");
    }

    return content;
  } catch (e: unknown) {
    if (e instanceof HttpsError) throw e;

    const msg = String((e as any)?.message ?? e).toLowerCase();
    if (msg.includes("aborted") || msg.includes("abort")) {
      console.error("[AI/OpenAI] timeout", { uid, rid });
      throw new HttpsError("deadline-exceeded", "ai_timeout");
    }

    console.error("[AI/OpenAI] unexpected", { uid, rid, err: msg });
    throw new HttpsError("unavailable", "ai_unavailable");
  } finally {
    clearTimeout(timeout);
  }
}

// ─── Provider: Claude (Anthropic) ─────────────────────────────────────────────

/**
 * Anthropic Messages API.
 * Converts the OpenAI-style message list: the first "system" message becomes
 * the top-level `system` param; remaining messages become the `messages` array.
 */
async function callClaude(
  apiKey: string,
  msgList: ChatMessage[],
  uid: string,
  rid: string,
): Promise<string> {
  // Split system prompt from conversation messages
  const systemMsg = msgList.find((m) => m.role === "system");
  const conversationMsgs = msgList.filter((m) => m.role !== "system");

  if (conversationMsgs.length === 0) {
    throw new HttpsError("invalid-argument", "No user message for Claude");
  }

  const controller = new AbortController();
  const timeout = setTimeout(() => controller.abort(), 25_000);

  try {
    const body: Record<string, unknown> = {
      model: "claude-haiku-4-5-20251001",
      max_tokens: 320,
      messages: conversationMsgs,
    };

    if (systemMsg) {
      body.system = systemMsg.content;
    }

    const res = await fetch("https://api.anthropic.com/v1/messages", {
      method: "POST",
      signal: controller.signal,
      headers: {
        "Content-Type": "application/json",
        "x-api-key": apiKey,
        "anthropic-version": "2023-06-01",
      },
      body: JSON.stringify(body),
    });

    if (!res.ok) {
      const bodyText = await res.text().catch(() => "");
      console.error("[AI/Claude] error", {
        uid,
        rid,
        status: res.status,
        body: bodyText.slice(0, 400),
      });

      if (res.status === 401 || res.status === 403) {
        throw new HttpsError("failed-precondition", "ai_misconfigured");
      }
      if (res.status === 429) {
        throw new HttpsError("resource-exhausted", "ai_rate_limited");
      }
      throw new HttpsError("unavailable", "ai_unavailable");
    }

    const data: any = await res.json();
    // Anthropic response: { content: [{ type: "text", text: "..." }] }
    const content = asString(
      data?.content?.find((c: any) => c.type === "text")?.text
    ).trim();

    if (!content) {
      console.error("[AI/Claude] empty content", { uid, rid });
      throw new HttpsError("internal", "ai_error");
    }

    return content;
  } catch (e: unknown) {
    if (e instanceof HttpsError) throw e;

    const msg = String((e as any)?.message ?? e).toLowerCase();
    if (msg.includes("aborted") || msg.includes("abort")) {
      console.error("[AI/Claude] timeout", { uid, rid });
      throw new HttpsError("deadline-exceeded", "ai_timeout");
    }

    console.error("[AI/Claude] unexpected", { uid, rid, err: msg });
    throw new HttpsError("unavailable", "ai_unavailable");
  } finally {
    clearTimeout(timeout);
  }
}

// ─── Fallback routing ─────────────────────────────────────────────────────────

/**
 * Returns true if the error code indicates a retriable failure where
 * trying an alternate provider makes sense.
 */
function isRetriable(e: HttpsError): boolean {
  return (
    e.code === "resource-exhausted" ||
    e.code === "unavailable" ||
    e.code === "deadline-exceeded" ||
    e.code === "internal"
  );
}

// ─── Cloud Function ───────────────────────────────────────────────────────────

export const generateMessage = onCall(
  {
    region: "us-central1",
    timeoutSeconds: 60,
    secrets: ["OPENAI_API_KEY", "ANTHROPIC_API_KEY"],
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

    const openAiKey = (process.env.OPENAI_API_KEY ?? "").trim();
    const anthropicKey = (process.env.ANTHROPIC_API_KEY ?? "").trim();

    if (!openAiKey && !anthropicKey) {
      throw new HttpsError("failed-precondition", "No AI provider configured");
    }

    console.log("[AI] request", {
      uid,
      rid,
      localeTag: loc,
      platform: plat,
      msgCount: msgList.length,
      totalChars,
      atMs: nowMs(),
    });

    // ── Primary: OpenAI ────────────────────────────────────────────────────
    let primaryError: HttpsError | null = null;

    if (openAiKey) {
      try {
        const content = await callOpenAI(openAiKey, msgList, uid, rid);

        console.log("[AI] success", {
          uid,
          rid,
          provider: "openai" as AiProvider,
          outLen: content.length,
          atMs: nowMs(),
        });

        return { text: content, requestId: rid };
      } catch (e: unknown) {
        if (!(e instanceof HttpsError)) throw e;

        primaryError = e;

        // Non-retriable errors (e.g. bad API key, invalid-argument): surface immediately.
        if (!isRetriable(e)) throw e;

        console.warn("[AI] OpenAI failed, trying Claude fallback", {
          uid,
          rid,
          code: e.code,
          message: e.message,
        });
      }
    }

    // ── Fallback: Claude ───────────────────────────────────────────────────
    if (anthropicKey) {
      try {
        const content = await callClaude(anthropicKey, msgList, uid, rid);

        console.log("[AI] success", {
          uid,
          rid,
          provider: "claude" as AiProvider,
          outLen: content.length,
          atMs: nowMs(),
        });

        return { text: content, requestId: rid };
      } catch (e: unknown) {
        if (!(e instanceof HttpsError)) throw e;

        console.error("[AI] Claude fallback also failed", {
          uid,
          rid,
          code: e.code,
          message: e.message,
        });

        // Surface the Claude error if OpenAI wasn't configured at all,
        // otherwise surface the original OpenAI error for consistency.
        throw primaryError ?? e;
      }
    }

    // Neither provider available / both failed (OpenAI returned non-retriable, no Anthropic key)
    throw primaryError ?? new HttpsError("internal", "ai_error");
  },
);
