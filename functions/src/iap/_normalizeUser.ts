/* eslint-disable */
import { asNumber, asString } from "./_utils";

/**
 * ✅ Normalize user across schemas:
 * - preferred: creditsTotal + creditsUsed
 * - fallback: creditsRemaining (+ creditsUsed) => creditsTotal = creditsRemaining + creditsUsed
 */
export type NormalizedUser = {
  plan: string;
  creditsTotal: number;
  creditsUsed: number;
  userDocExists: boolean;
};

export function normalizeUser(raw: any, exists: boolean): NormalizedUser {
  const plan = asString(raw?.plan ?? "basic") || "basic";
  const creditsUsed = asNumber(raw?.creditsUsed ?? 0);

  const hasCreditsTotal =
    raw?.creditsTotal != null && raw?.creditsTotal !== "";

  if (hasCreditsTotal) {
    const creditsTotal = asNumber(raw?.creditsTotal ?? 0);
    return {
      plan,
      creditsTotal,
      creditsUsed,
      userDocExists: exists,
    };
  }

  const creditsRemaining = asNumber(raw?.creditsRemaining ?? 0);
  const derivedTotal = creditsRemaining + creditsUsed;

  return {
    plan,
    creditsTotal: derivedTotal,
    creditsUsed,
    userDocExists: exists,
  };
}