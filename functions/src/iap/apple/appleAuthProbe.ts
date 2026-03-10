/* eslint-disable */
import { onCall, HttpsError } from "firebase-functions/v2/https";
import { createAppleServerApiJwt, getAppleJwtDebugMeta } from "./appleJwt";

function storekitBaseUrl(isSandbox: boolean): string {
  return isSandbox
    ? "https://api.storekit-sandbox.itunes.apple.com"
    : "https://api.storekit.itunes.apple.com";
}

async function fetchText(url: string, token: string) {
  const res = await fetch(url, {
    method: "GET",
    headers: {
      Authorization: `Bearer ${token}`,
      Accept: "application/json",
    },
  });

  const body = await res.text();
  const requestId =
    res.headers.get("request-id") ??
    res.headers.get("x-request-id") ??
    undefined;

  return {
    status: res.status,
    requestId,
    body: (body || "").slice(0, 500),
  };
}

/**
 * Probar Apple JWT mot StoreKit App Store Server API.
 * OBS: Använd IAP-nyckeln (In-App Purchase key) i secrets.
 */
export const appleAuthProbe = onCall(
  {
    region: "us-central1",
    secrets: ["APPLE_ISSUER_ID", "APPLE_KEY_ID", "APPLE_PRIVATE_KEY"],
    enforceAppCheck: false,
  },
  async (_req) => {
    try {
      const meta = getAppleJwtDebugMeta();
      const token = createAppleServerApiJwt();

      // Fake txId: vi förväntar oss t.ex. 401/404 men med requestId osv.
      const fakeTx = `TEST_TX_${Date.now()}`;

      const prodUrl = `${storekitBaseUrl(false)}/inApps/v1/transactions/${encodeURIComponent(
        fakeTx,
      )}`;
      const sbUrl = `${storekitBaseUrl(true)}/inApps/v1/transactions/${encodeURIComponent(
        fakeTx,
      )}`;

      const prod = await fetchText(prodUrl, token);
      const sandbox = await fetchText(sbUrl, token);

      console.log("[APPLE PROBE] meta", meta);
      console.log("[APPLE PROBE] storekit prod", prod);
      console.log("[APPLE PROBE] storekit sandbox", sandbox);

      return { ok: true, meta, storekit: { prod, sandbox } };
    } catch (e: any) {
      if (e instanceof HttpsError) throw e;
      throw new HttpsError("internal", e?.message ?? String(e));
    }
  },
);