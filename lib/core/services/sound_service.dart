// lib/core/services/sound_service.dart
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

class SoundService {
  SoundService._();
  static final instance = SoundService._();

  AudioPlayer? _player;

  Future<void> init() async {
    try {
      _player = AudioPlayer();
      await _player!.setAudioContext(
        AudioContext(
          iOS: AudioContextIOS(
            category: AVAudioSessionCategory.ambient,
            options: {AVAudioSessionOptions.mixWithOthers},
          ),
          android: AudioContextAndroid(
            isSpeakerphoneOn: false,
            stayAwake: false,
            contentType: AndroidContentType.music,
            usageType: AndroidUsageType.media,
            audioFocus: AndroidAudioFocus.gainTransientMayDuck,
          ),
        ),
      );
      await _player!.setVolume(1.0);
      await _player!.setReleaseMode(ReleaseMode.stop);
    } catch (e) {
      debugPrint('[SoundService] init error: $e');
    }
  }

  /// Play the premium category-tap sound.
  Future<void> playTap() async {
    try {
      final p = _player;
      if (p == null) return;
      await p.play(AssetSource('sounds/tap.wav'));
    } catch (e) {
      debugPrint('[SoundService] playTap error: $e');
    }
  }

  /// Play the pilgrimage guide entry sound.
  Future<void> playGuideTap() async {
    try {
      final p = _player;
      if (p == null) return;
      await p.play(AssetSource('sounds/guide-tap.wav'));
    } catch (e) {
      debugPrint('[SoundService] playGuideTap error: $e');
    }
  }

  /// Play the Ask Ayara invocation sound.
  Future<void> playAskAyara() async {
    try {
      final p = _player;
      if (p == null) return;
      await p.play(AssetSource('sounds/ask-ayara.wav'));
    } catch (e) {
      debugPrint('[SoundService] playAskAyara error: $e');
    }
  }

  void dispose() {
    _player?.dispose();
    _player = null;
  }
}
