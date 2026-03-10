/* eslint-disable */
import { HttpsError } from "firebase-functions/v2/https";
import jwt, { JwtHeader, SignOptions } from "jsonwebtoken";
import crypto from "crypto";

const APPLE_AUD = "appstoreconnect-v1";
const JWT_TTL_SECONDS = 60 * 15; // 15 min

function mustEnv(name: string): string {
  const v = (process.env[name] ?? "").trim();
  if (!v) throw new HttpsError("failed-precondition", `Missing secret: ${name}`);
  return v;
}

function normalizeApplePrivateKey(raw: string): string {
  let k = String(raw).trim();

  // If someone pasted it quoted in env
  if (
    (k.startsWith('"') && k.endsWith('"')) ||
    (k.startsWith("'") && k.endsWith("'"))
  ) {
    k = k.slice(1, -1).trim();
  }

  // Support multiline secrets stored with \n
  if (k.includes("\\n")) k = k.replace(/\\n/g, "\n");
  k = k.replace(/\r\n/g, "\n");

  // Accept either PKCS8 "PRIVATE KEY" or (rarely) "EC PRIVATE KEY"
  const hasBegin =
    k.includes("BEGIN PRIVATE KEY") || k.includes("BEGIN EC PRIVATE KEY");
  const hasEnd =
    k.includes("END PRIVATE KEY") || k.includes("END EC PRIVATE KEY");

  if (!hasBegin || !hasEnd) {
    // Default wrapper for Apple .p8 (PKCS8)
    k = `-----BEGIN PRIVATE KEY-----\n${k}\n-----END PRIVATE KEY-----`;
  }

  // Normalize spacing/newlines around headers/footers
  k = k.replace(
    /-----BEGIN (EC )?PRIVATE KEY-----\s*/m,
    (m) => m.trim() + "\n",
  );
  k = k.replace(
    /\s*-----END (EC )?PRIVATE KEY-----/m,
    (m) => "\n" + m.trim(),
  );

  return k.trim() + "\n";
}

function detectAsymType(privateKeyPem: string): string | undefined {
  try {
    const ko: any = crypto.createPrivateKey(privateKeyPem);
    return ko?.asymmetricKeyType; // ES256 kräver 'ec'
  } catch {
    return undefined;
  }
}

function sanityCheckIssuerAndKid(issuerId: string, keyId: string) {
  if (!/^[0-9a-fA-F-]{36}$/.test(issuerId)) {
    console.warn("[APPLE JWT] issuerId does not look like UUID:", issuerId);
  }
  if (!/^[A-Z0-9]{10}$/.test(keyId)) {
    console.warn("[APPLE JWT] keyId does not look like Apple Key ID:", keyId);
  }
}

export function getAppleJwtDebugMeta() {
  const issuerId = mustEnv("APPLE_ISSUER_ID");
  const keyId = mustEnv("APPLE_KEY_ID");
  const pkRaw = mustEnv("APPLE_PRIVATE_KEY");
  const bid = mustEnv("APPLE_BUNDLE_ID"); // ✅ required for App Store Server API

  sanityCheckIssuerAndKid(issuerId, keyId);

  const pk = normalizeApplePrivateKey(pkRaw);
  const asymType = detectAsymType(pk);
  const pkHash12 = crypto
    .createHash("sha256")
    .update(pk)
    .digest("hex")
    .slice(0, 12);

  return {
    issuerIdLen: issuerId.length,
    keyId,
    bid,
    pkHasBegin:
      pk.includes("BEGIN PRIVATE KEY") || pk.includes("BEGIN EC PRIVATE KEY"),
    pkHasEnd:
      pk.includes("END PRIVATE KEY") || pk.includes("END EC PRIVATE KEY"),
    pkLen: pk.length,
    asymType,
    pkHash12,
  };
}

export function logAppleJwtDebug(tag: string) {
  const issuerId = mustEnv("APPLE_ISSUER_ID");
  const keyId = mustEnv("APPLE_KEY_ID");
  const bid = mustEnv("APPLE_BUNDLE_ID");

  sanityCheckIssuerAndKid(issuerId, keyId);

  const meta = getAppleJwtDebugMeta();

  const now = Math.floor(Date.now() / 1000);
  const exp = now + JWT_TTL_SECONDS;

  const header: JwtHeader = { alg: "ES256", kid: keyId, typ: "JWT" };
  const payload = { iss: issuerId, aud: APPLE_AUD, iat: now, exp, bid };

  console.log(tag, "meta", meta);
  console.log(tag, "header", header);
  console.log(tag, "payload", payload);
}

export function createAppleServerApiJwt(): string {
  const issuerId = mustEnv("APPLE_ISSUER_ID");
  const keyId = mustEnv("APPLE_KEY_ID");
  const privateKey = normalizeApplePrivateKey(mustEnv("APPLE_PRIVATE_KEY"));
  const bid = mustEnv("APPLE_BUNDLE_ID"); // ✅

  sanityCheckIssuerAndKid(issuerId, keyId);

  const asymType = detectAsymType(privateKey);
  if (asymType && asymType !== "ec") {
    throw new HttpsError(
      "failed-precondition",
      `APPLE_PRIVATE_KEY is not an EC key (asymmetricKeyType=${asymType}). ES256 requires EC (.p8)`,
    );
  }

  const now = Math.floor(Date.now() / 1000);
  const exp = now + JWT_TTL_SECONDS;

  const header: JwtHeader = { alg: "ES256", kid: keyId, typ: "JWT" };

  const options: SignOptions = {
    algorithm: "ES256",
    header,
  };

  // ✅ bid är nyckeln här
  return jwt.sign(
    { iss: issuerId, aud: APPLE_AUD, iat: now, exp, bid },
    privateKey,
    options,
  );
}