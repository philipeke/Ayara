import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class DeviceIdService {
  DeviceIdService._internal();
  static final DeviceIdService instance = DeviceIdService._internal();

  // Legacy keys (SharedPreferences)
  static const _legacyInstallIdKey = 'nuria_device_id';
  static const _legacyDeviceKeyKey = 'nuria_device_key';

  // Secure storage keys
  static const _secureInstallIdKey = 'ayara_install_id';
  static const _secureDeviceKeyKey = 'ayara_install_key';

  // Secure storage (Keychain on iOS, Keystore on Android)
  static const FlutterSecureStorage _secure = FlutterSecureStorage(
    iOptions: IOSOptions(
      // Good default for dev/prod.
      accessibility: KeychainAccessibility.first_unlock,
    ),
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  String? _cachedInstallId;
  String? _cachedDeviceKey;

  Future<String>? _installIdFuture;
  Future<String>? _deviceKeyFuture;

  void _cacheInstallId(String v) => _cachedInstallId = v;
  void _cacheDeviceKey(String v) => _cachedDeviceKey = v;

  /// Returns a stable per-installation id.
  /// Uses secure storage to avoid accidental resets during dev.
  Future<String> getDeviceId() {
    if (_cachedInstallId != null) return Future.value(_cachedInstallId!);
    _installIdFuture ??= _loadOrCreateInstallId();
    return _installIdFuture!;
  }

  /// Returns a stable per-installation secret (deviceKey).
  /// Random, install-bound secret to harden device-binding on backend.
  Future<String> getDeviceKey() {
    if (_cachedDeviceKey != null) return Future.value(_cachedDeviceKey!);
    _deviceKeyFuture ??= _loadOrCreateDeviceKey();
    return _deviceKeyFuture!;
  }

  Future<String> _loadOrCreateInstallId() async {
    // 1) Secure storage first
    final existingSecure = await _secure.read(key: _secureInstallIdKey);
    if (existingSecure != null && existingSecure.isNotEmpty) {
      _cacheInstallId(existingSecure);
      return existingSecure;
    }

    // 2) Migrate from SharedPreferences (legacy)
    final prefs = await SharedPreferences.getInstance();
    final legacy = prefs.getString(_legacyInstallIdKey);
    if (legacy != null && legacy.isNotEmpty) {
      await _secure.write(key: _secureInstallIdKey, value: legacy);
      await prefs.remove(_legacyInstallIdKey);
      _cacheInstallId(legacy);
      return legacy;
    }

    // 3) Create new
    final newId = const Uuid().v4();
    await _secure.write(key: _secureInstallIdKey, value: newId);
    _cacheInstallId(newId);
    return newId;
  }

  Future<String> _loadOrCreateDeviceKey() async {
    // 1) Secure storage first
    final existingSecure = await _secure.read(key: _secureDeviceKeyKey);
    if (existingSecure != null && existingSecure.isNotEmpty) {
      _cacheDeviceKey(existingSecure);
      return existingSecure;
    }

    // 2) Migrate from SharedPreferences (legacy)
    final prefs = await SharedPreferences.getInstance();
    final legacy = prefs.getString(_legacyDeviceKeyKey);
    if (legacy != null && legacy.isNotEmpty) {
      await _secure.write(key: _secureDeviceKeyKey, value: legacy);
      await prefs.remove(_legacyDeviceKeyKey);
      _cacheDeviceKey(legacy);
      return legacy;
    }

    // 3) Create new (longer than UUID to be “secret-ish”)
    final newKey = '${const Uuid().v4()}${const Uuid().v4()}';
    await _secure.write(key: _secureDeviceKeyKey, value: newKey);
    _cacheDeviceKey(newKey);
    return newKey;
  }

  static const MethodChannel _channel =
      MethodChannel('com.oakdev.ayara/device');

  String? _cachedHardwareId;
  bool _hardwareIdResolved = false;

  /// Returns a hardware-level fingerprint that survives app reinstall.
  /// Android: Settings.Secure.ANDROID_ID (resets only on factory reset).
  /// iOS: null (Keychain already survives reinstalls).
  Future<String?> getHardwareId() async {
    if (_hardwareIdResolved) return _cachedHardwareId;
    if (!Platform.isAndroid) {
      _hardwareIdResolved = true;
      return null;
    }
    try {
      final id = await _channel.invokeMethod<String>('getAndroidId');
      _cachedHardwareId = (id != null && id.isNotEmpty) ? id : null;
    } catch (_) {
      _cachedHardwareId = null;
    }
    _hardwareIdResolved = true;
    return _cachedHardwareId;
  }

  /// Debug helper: clears installation identity (deviceId + deviceKey).
  /// NOTE: This will generate a new binding on next usage.
  Future<void> reset() async {
    await _secure.delete(key: _secureInstallIdKey);
    await _secure.delete(key: _secureDeviceKeyKey);

    // Also clear legacy, just in case.
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_legacyInstallIdKey);
    await prefs.remove(_legacyDeviceKeyKey);

    _cachedInstallId = null;
    _cachedDeviceKey = null;
    _installIdFuture = null;
    _deviceKeyFuture = null;
    _cachedHardwareId = null;
    _hardwareIdResolved = false;
  }
}

