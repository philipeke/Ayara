/* eslint-disable */
import { onRequest } from "firebase-functions/v2/https";
import { createAppleServerApiJwt, getAppleJwtDebugMeta } from "./apple/appleJwt";

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
      "User-Agent": "nuria-iap/1.0",
    },
  });

  const body = await res.text();
  const requestId =
    res.headers.get("request-id") ??
    res.headers.get("x-request-id") ??
    undefined;
  const wwwAuthenticate = res.headers.get("www-authenticate") ?? undefined;

  return {
    status: res.status,
    requestId,
    wwwAuthenticate,
    body: (body || "").slice(0, 500),
  };
}

export const appleAuthProbeHttp = onRequest(
  {
    region: "us-central1",
    secrets: ["APPLE_ISSUER_ID", "APPLE_KEY_ID", "APPLE_PRIVATE_KEY", "APPLE_BUNDLE_ID"],
  },
  async (_req, res) => {
    try {
      const meta = getAppleJwtDebugMeta();
      const token = createAppleServerApiJwt();

      // StoreKit endpoint (fake tx to verify auth path)
      const fakeTx = `TEST_TX_${Date.now()}`;
      const storekitProdUrl = `${storekitBaseUrl(false)}/inApps/v1/transactions/${encodeURIComponent(
        fakeTx,
      )}`;
      const storekitSbUrl = `${storekitBaseUrl(true)}/inApps/v1/transactions/${encodeURIComponent(
        fakeTx,
      )}`;

      const storekitProd = await fetchText(storekitProdUrl, token);
      const storekitSandbox = await fetchText(storekitSbUrl, token);

      // NOTE:
      // This same JWT is meant for StoreKit App Store Server API (aud=appstoreconnect-v1 + bid).
      // The App Store Connect API also uses JWT, but with different requirements/claims.
      // So ASC might legitimately return 401/403 even if StoreKit is fine.
      const ascUrl = "https://api.appstoreconnect.apple.com/v1/apps?limit=1";
      const asc = await fetchText(ascUrl, token);

      console.log("[APPLE PROBE HTTP] meta", meta);
      console.log("[APPLE PROBE HTTP] storekit prod", storekitProd);
      console.log("[APPLE PROBE HTTP] storekit sandbox", storekitSandbox);
      console.log("[APPLE PROBE HTTP] asc", asc);

      res.status(200).json({
        ok: true,
        meta,
        storekit: { prod: storekitProd, sandbox: storekitSandbox },
        asc,
      });
    } catch (e: any) {
      console.error("[APPLE PROBE HTTP] error", e);
      const msg = e?.message ?? String(e);
      res.status(500).json({ ok: false, error: msg });
    }
  },
);
