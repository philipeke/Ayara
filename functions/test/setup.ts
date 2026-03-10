/**
 * Runs BEFORE any module is imported.
 * Module-level constants (DEVICE_SALT, IAP_LEDGER_SALT, etc.) are
 * initialized at import time, so these must be in setupFiles.
 */
process.env.DEVICE_SALT = 'test-device-salt';
process.env.IAP_LEDGER_SALT = 'test-iap-salt';
process.env.APPLE_BUNDLE_ID = 'com.oakdev.nuria.test';
process.env.GOOGLE_PLAY_PACKAGE_NAME = 'com.oakdev.nuria.test';
