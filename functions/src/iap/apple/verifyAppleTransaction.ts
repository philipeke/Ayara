/* eslint-disable */
import { HttpsError } from "firebase-functions/v2/https";
import {
  createAppleServerApiJwt,
  logAppleJwtDebug,
  getAppleJwtDebugMeta,
} from "./appleJwt";

type DecodedTxInfo = {
  productId?: string;
  bundleId?: string;
  environment?: string; // "Sandbox" | "Production"
  originalTransactionId?: string;
  transactionId?: string;
  purchaseDate?: number;
  expiresDate?: number;
};

export type VerifyResult = {
  ok: boolean;
  status?: number;
  reason?: string;
  signedTransactionInfo?: string;
  decoded?: DecodedTxInfo;
  requestId?: string;
  tried?: "prod" | "sandbox";
  // Extra debug: vad hände i båda försök
  attempts?: {
    prod?: { status?: number; reason?: string; requestId?: string };
    sandbox?: { status?: number; reason?: string; requestId?: string };
  };
};

function appleBaseUrl(isSandbox: boolean): string {
  return isSandbox
    ? "https://api.storekit-sandbox.itunes.apple.com"
    : "https://api.storekit.itunes.apple.com";
}

function extractAppleRequestId(text: string): string | undefined {
  const m = /Request ID:\s*([A-Z0-9.]+)/i.exec(text || "");
  return m?.[1];
}

function base64UrlToUtf8(input: string): string {
  const b64 = input.replace(/-/g, "+").replace(/_/g, "/");
  const pad = b64.length % 4 === 0 ? "" : "=".repeat(4 - (b64.length % 4));
  return Buffer.from(b64 + pad, "base64").toString("utf8");
}

function decodeAppleJwsPayload(jws: string): any | null {
  const parts = (jws || "").split(".");
  if (parts.length < 2) return null;
  try {
    const payloadJson = base64UrlToUtf8(parts[1]);
    return JSON.parse(payloadJson);
  } catch {
    return null;
  }
}

function pickDecodedInfo(payload: any): DecodedTxInfo {
  if (!payload || typeof payload !== "object") return {};
  return {
    productId: typeof payload.productId === "string" ? payload.productId : undefined,
    bundleId: typeof payload.bundleId === "string" ? payload.bundleId : undefined,
    environment: typeof payload.environment === "string" ? payload.environment : undefined,
    originalTransactionId:
      typeof payload.originalTransactionId === "string"
        ? payload.originalTransactionId
        : undefined,
    transactionId: typeof payload.transactionId === "string" ? payload.transactionId : undefined,
    purchaseDate: typeof payload.purchaseDate === "number" ? payload.purchaseDate : undefined,
    expiresDate: typeof payload.expiresDate === "number" ? payload.expiresDate : undefined,
  };
}

async function fetchWithTimeout(
  url: string,
  options: any,
  timeoutMs: number,
): Promise<Response> {
  const controller = new AbortController();
  const id = setTimeout(() => controller.abort(), timeoutMs);
  try {
    return await fetch(url, { ...options, signal: controller.signal });
  } finally {
    clearTimeout(id);
  }
}

function shouldDebugAppleJwt(): boolean {
  const v = (process.env.APPLE_JWT_DEBUG ?? "").trim().toLowerCase();
  return v === "1" || v === "true" || v === "yes";
}

async function callAppleTransactionEndpoint(
  transactionId: string,
  isSandbox: boolean,
): Promise<VerifyResult> {
  if (shouldDebugAppleJwt()) {
    logAppleJwtDebug("[APPLE JWT]");
    const meta = getAppleJwtDebugMeta();
    console.log("[APPLE JWT] using", {
      keyId: meta.keyId,
      bid: meta.bid,
      pkHash12: meta.pkHash12,
    });
  }

  const token = createAppleServerApiJwt();
  const url = `${appleBaseUrl(isSandbox)}/inApps/v1/transactions/${encodeURIComponent(
    transactionId,
  )}`;

  let res: Response;
  try {
    res = await fetchWithTimeout(
      url,
      {
        method: "GET",
        headers: {
          Authorization: `Bearer ${token}`,
          // Cosmetic only (logs/diagnostics)
          "User-Agent": "ayara-iap/1.0",
          Accept: "application/json",
        },
      },
      6000,
    );
  } catch (e: any) {
    const msg =
      e?.name === "AbortError"
        ? "Apple request timed out"
        : `Apple fetch exception: ${e?.message ?? String(e)}`;
    return {
      ok: false,
      status: 0,
      reason: msg,
      requestId: undefined,
      tried: isSandbox ? "sandbox" : "prod",
    };
  }

  const text = await res.text();
  const requestId = extractAppleRequestId(text);

  if (!res.ok) {
    const reason = (text?.slice(0, 500) || res.statusText || "").trim();
    console.warn("[APPLE VERIFY]", isSandbox ? "sandbox" : "prod", {
      transactionId,
      status: res.status,
      requestId,
      reason,
    });

    return {
      ok: false,
      status: res.status,
      reason,
      requestId,
      tried: isSandbox ? "sandbox" : "prod",
    };
  }

  let json: any = null;
  try {
    json = JSON.parse(text);
  } catch {
    return {
      ok: false,
      status: res.status,
      reason: "Invalid JSON from Apple",
      requestId,
      tried: isSandbox ? "sandbox" : "prod",
    };
  }

  const signedTransactionInfo = String(json?.signedTransactionInfo || "");
  if (!signedTransactionInfo) {
    return {
      ok: false,
      status: 200,
      reason: "Missing signedTransactionInfo",
      requestId,
      tried: isSandbox ? "sandbox" : "prod",
    };
  }

  const payload = decodeAppleJwsPayload(signedTransactionInfo);
  const decoded = pickDecodedInfo(payload);

  return {
    ok: true,
    status: 200,
    signedTransactionInfo,
    decoded,
    requestId,
    tried: isSandbox ? "sandbox" : "prod",
  };
}

export async function verifyAppleTransaction(
  transactionId: string,
): Promise<VerifyResult> {
  if (!transactionId) {
    throw new HttpsError("invalid-argument", "Missing transactionId");
  }

  try {
    // Vi försöker alltid prod först, men går alltid vidare till sandbox om prod misslyckas.
    const prod = await callAppleTransactionEndpoint(transactionId, false);
    if (prod.ok) return prod;

    const sb = await callAppleTransactionEndpoint(transactionId, true);
    if (sb.ok) return sb;

    // Bygg en mer användbar error output som innehåller båda försöken.
    const attempts = {
      prod: { status: prod.status, reason: prod.reason, requestId: prod.requestId },
      sandbox: { status: sb.status, reason: sb.reason, requestId: sb.requestId },
    };

    // Prioritera auth-fel (401/403) om något av dem är auth-fel (ofta JWT/secrets)
    const prodAuth = prod.status === 401 || prod.status === 403;
    const sbAuth = sb.status === 401 || sb.status === 403;

    if (prodAuth || sbAuth) {
      const chosen = prodAuth ? prod : sb;
      return {
        ...chosen,
        ok: false,
        attempts,
        reason: `${chosen.reason ?? ""}`.trim(),
      };
    }

    // Annars returnera sandbox-fel (ofta mer relevant för sandbox tx)
    return {
      ...sb,
      ok: false,
      attempts,
      reason: `${sb.reason ?? ""}`.trim(),
    };
  } catch (e: any) {
    if (e instanceof HttpsError) throw e;
    return { ok: false, reason: `exception: ${e?.message ?? String(e)}` };
  }
}
