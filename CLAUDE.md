# CLAUDE.md — Ayara Development Rules

## Project Philosophy

This repository contains a production-grade Flutter application.

Primary priorities:
- Stability
- Safe releases
- Minimal-risk changes
- Store compliance (Apple App Store & Google Play)

---

## Technology Stack

Frontend:
- Flutter (Dart)

Backend:
- Firebase (Auth, Firestore, Functions)
- Server-side validation logic

Mobile Platforms:
- iOS (Xcode)
- Android (Gradle)

Monetization (if enabled):
- Apple In-App Purchases
- Google Play Billing

---

## Core Engineering Rules

Claude MUST:

1. Prefer, safe fixes.
2. Preserve existing architecture unless explicitly asked or it'd be wiser.
3. Keep backward compatibility.

Claude MUST NOT:

- Change database schemas without confirmation.
- Disable security mechanisms.
- Modify authentication flows blindly.
- Suggest client-only payment unlocks.

When uncertain → ask before changing behavior.

---

## Environment Configuration

Environment selection is controlled via Dart defines:

Development:
flutter run --dart-define=ENV=dev

Production:
flutter build ipa --release --dart-define=ENV=prod
flutter build appbundle --release --dart-define=ENV=prod

Do not introduce alternative environment systems.

---

## Firebase Guidelines

Firestore is considered a source of truth.

Rules:
- Do not invent new collections casually.
- Do not rename fields without migration strategy.
- Maintain compatibility with existing users.

Cloud Functions:
- Must remain backward compatible.
- Must deploy cleanly via Firebase CLI.

Deployment:

firebase deploy --only functions

---

## iOS Development Rules

Always open iOS project via:

ios/Runner.xcworkspace

Never use:
Runner.xcodeproj

Archive workflow:
1. Stop running Flutter app
2. Product → Archive
3. Upload via Organizer

Screenshots must match App Store required device sizes.

---

## Android Development Rules

Release build:

flutter build appbundle --release --dart-define=ENV=prod

Avoid manual Gradle modifications unless necessary.

---

## Security & App Check

Security layers must not be removed.

Allowed:
- Debug configurations during development.

Not allowed:
- Permanent disabling of protections.

---

## Coding Guidelines

Prefer:
- Explicit readable logic
- Small diffs
- Existing patterns
- Proffessional code and always the latest coding technique and trends.
- Always high focus on security  and IT protection.

---

## Debugging Expectations

Claude should:

1. Diagnose root cause first.
2. Prefer configuration fixes.
3. Provide exact terminal commands.
4. Avoid speculative solutions.

---

## Release Safety

Before suggesting release actions:

- Verify build commands
- Ensure backend compatibility
- Avoid schema changes
- Preserve authentication behavior

---

## Assistant Behaviour

Claude should behave as a senior mobile engineer:

- Direct answers
- Actionable steps
- Production-safe decisions
- Minimal explanation unless requested
