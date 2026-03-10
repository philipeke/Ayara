/* eslint-disable */
import crypto from "crypto";

export function sha256(s: string) {
  return crypto.createHash("sha256").update(String(s)).digest("hex");
}

export function asString(v: any) {
  return typeof v === "string" ? v : v != null ? String(v) : "";
}

export function asNumber(v: any) {
  const n = Number(v ?? 0);
  return Number.isFinite(n) ? n : 0;
}

export function base64UrlDecode(input: string): string {
  let s = asString(input).trim().replace(/-/g, "+").replace(/_/g, "/");
  if (!s) return "";

  while (s.length % 4) s += "=";
  return Buffer.from(s, "base64").toString("utf8");
}

export function decodeAppleJwsPayload(jws: string): any {
  const parts = asString(jws).split(".");
  if (parts.length < 2) return null;

  try {
    const payloadJson = base64UrlDecode(parts[1]);
    if (!payloadJson) return null;
    return JSON.parse(payloadJson);
  } catch {
    return null;
  }
}