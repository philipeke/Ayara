// lib/features/duas/dua_audio_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/limit/usage_service.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Data
// ─────────────────────────────────────────────────────────────────────────────

enum _DuaSection { ziyarat, ramadan, weekly, anytime }

class _DuaAudioEntry {
  final String id;
  final String nameEn;
  final String nameAr;
  final String imam;
  final String occasion;
  final String duration;
  final String? audioUrl; // null = coming soon
  final Color accent;
  final String description;
  final _DuaSection section;

  const _DuaAudioEntry({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.imam,
    required this.occasion,
    required this.duration,
    this.audioUrl,
    required this.accent,
    required this.description,
    required this.section,
  });
}

// ── Flat library ordered by section ──────────────────────────────────────────
const List<_DuaAudioEntry> _duaAudioLibrary = [

  // ── Ziyarat ────────────────────────────────────────────────────────────────
  _DuaAudioEntry(
    id: 'ashura',
    nameEn: 'Ziyarat Ashura',
    nameAr: 'زيارة عاشوراء',
    imam: 'Imam Muhammad al-Baqir (AS)',
    occasion: 'Ashura & daily',
    duration: '~12 min',
    audioUrl: 'https://mp3.duas.org/ziyarat-ashura-imam-hussain.mp3',
    accent: AppColors.crimsonBright,
    section: _DuaSection.ziyarat,
    description:
        'A spiritual visitation to Imam Husayn (AS) on the day of Ashura and throughout the year. Among the most rewarding acts in Shia practice, carrying immense spiritual merit.',
  ),
  _DuaAudioEntry(
    id: 'warith',
    nameEn: 'Ziyarat Warith',
    nameAr: 'زيارة وارث',
    imam: 'Transmitted from Imam al-Sadiq (AS)',
    occasion: 'Ashura & Ziyarat of Imam Husayn',
    duration: '~10 min',
    audioUrl: null,
    accent: AppColors.crimsonLight,
    section: _DuaSection.ziyarat,
    description:
        'A powerful visitation proclaiming Imam Husayn (AS) as the heir of the Prophets and Imams. Recited when performing the spiritual ziyarat of Imam Husayn, affirming his inheritance of prophethood and Imamate.',
  ),
  _DuaAudioEntry(
    id: 'jami_a',
    nameEn: 'Ziyarat al-Jami\'a al-Kabira',
    nameAr: 'زيارة الجامعة الكبيرة',
    imam: 'Imam Ali al-Hadi (AS)',
    occasion: 'Ziyarat of any Imam',
    duration: '~30 min',
    audioUrl: null,
    accent: AppColors.gold,
    section: _DuaSection.ziyarat,
    description:
        'The grand comprehensive visitation taught by Imam Ali al-Hadi (AS). It is the most complete and theologically profound ziyarat in Shia Islam, addressed to all the Imams, and a cornerstone of Shia doctrine on Imamate.',
  ),
  _DuaAudioEntry(
    id: 'arbaeen',
    nameEn: 'Ziyarat Arbaeen',
    nameAr: 'زيارة الأربعين',
    imam: 'Imam Ja\'far al-Sadiq (AS)',
    occasion: 'Arbaeen (20 Safar) & annually',
    duration: '~8 min',
    audioUrl: 'https://mp3.duas.org/Arbaeen.mp3',
    accent: AppColors.crimsonBright,
    section: _DuaSection.ziyarat,
    description:
        'The visitation of Imam Husayn (AS) recited on the 40th day after Ashura. One of five deeds that Imam al-Hassan al-Askari (AS) described as signs of a true believer. Millions make the Arbaeen march to Karbala annually.',
  ),

  // ── Ramadan ────────────────────────────────────────────────────────────────
  _DuaAudioEntry(
    id: 'iftitah',
    nameEn: 'Dua Iftitah',
    nameAr: 'دعاء الافتتاح',
    imam: 'Imam Muhammad al-Mahdi (AJ)',
    occasion: 'Every night of Ramadan',
    duration: '~18 min',
    audioUrl: 'https://mp3.duas.org/Ramdhan%20Special/Iftitah.mp3',
    accent: AppColors.emeraldBright,
    section: _DuaSection.ramadan,
    description:
        'One of the most beloved Ramadan supplications, transmitted from Imam al-Mahdi (AJ). Recited every night of the blessed month, it is an intimate opening of the heart to Allah, filled with praise, longing, and plea for mercy.',
  ),
  _DuaAudioEntry(
    id: 'abu_hamza',
    nameEn: 'Dua Abu Hamza al-Thumali',
    nameAr: 'دعاء أبي حمزة الثمالي',
    imam: 'Imam Ali Zayn al-Abidin (AS)',
    occasion: 'Pre-dawn (suhur) in Ramadan',
    duration: '~22 min',
    audioUrl: 'https://mp3.duas.org/Ramdhan%20Special/AbuHamzaThumali.mp3',
    accent: AppColors.gold,
    section: _DuaSection.ramadan,
    description:
        'One of the most emotionally profound supplications in Shia Islam, narrated by Abu Hamza al-Thumali from the fourth Imam. Recited in the final hours before dawn in Ramadan, it is a deep, tearful conversation with Allah seeking forgiveness.',
  ),
  _DuaAudioEntry(
    id: 'jawshan',
    nameEn: 'Dua Jawshan Kabeer',
    nameAr: 'دعاء الجوشن الكبير',
    imam: 'Prophet Muhammad (SAW)',
    occasion: 'Laylat al-Qadr / Ramadan nights',
    duration: '~90 min',
    audioUrl: null,
    accent: AppColors.gold,
    section: _DuaSection.ramadan,
    description:
        'The Great Armour — one of the longest and most majestic duas, comprising 100 sections each praising Allah by ten of His attributes. Recited especially on the Nights of Power (Laylat al-Qadr), its recitation is said to grant forgiveness and protection.',
  ),
  _DuaAudioEntry(
    id: 'mujeer',
    nameEn: 'Dua al-Mujeer',
    nameAr: 'دعاء المجير',
    imam: 'Prophet Muhammad (SAW)',
    occasion: 'Ramadan — nights 1, 15 & last',
    duration: '~20 min',
    audioUrl: null,
    accent: AppColors.emeraldBright,
    section: _DuaSection.ramadan,
    description:
        'A supplication taught by the Prophet (SAW) to Imam Ali (AS), invoking Allah\'s protection through His most beautiful names. Traditionally recited on the 1st, 15th, and last night of Ramadan.',
  ),
  _DuaAudioEntry(
    id: 'faraj',
    nameEn: 'Dua al-Faraj',
    nameAr: 'دعاء الفرج',
    imam: 'Transmitted from Imam al-Sadiq (AS)',
    occasion: 'After obligatory prayers',
    duration: '~3 min',
    audioUrl: 'https://mp3.duas.org/Ramdhan%20Special/23Faraj.mp3',
    accent: AppColors.gold,
    section: _DuaSection.ramadan,
    description:
        'A supplication for hastening the reappearance of Imam al-Mahdi (AJ) and the relief of the believers. Short and powerful, recommended after every obligatory prayer.',
  ),

  // ── Weekly ─────────────────────────────────────────────────────────────────
  _DuaAudioEntry(
    id: 'kumayl',
    nameEn: 'Dua Kumayl',
    nameAr: 'دعاء كميل',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    occasion: 'Thursday nights',
    duration: '~25 min',
    audioUrl: 'https://mp3.duas.org/kumayl_abdulhay.mp3',
    accent: AppColors.gold,
    section: _DuaSection.weekly,
    description:
        'One of the most revered supplications in Shia Islam, taught by Imam Ali (AS) to his companion Kumayl ibn Ziyad. Recited on Thursday nights, it is a profound cry to Allah for forgiveness and mercy.',
  ),
  _DuaAudioEntry(
    id: 'nudbah',
    nameEn: 'Dua Nudbah',
    nameAr: 'دعاء الندبة',
    imam: 'Transmitted from Imam al-Sadiq (AS)',
    occasion: 'Friday mornings',
    duration: '~20 min',
    audioUrl: 'https://mp3.duas.org/Nudba_AbdulHayyQambar.mp3',
    accent: AppColors.emeraldBright,
    section: _DuaSection.weekly,
    description:
        'A lamentation for the Occultation of Imam al-Mahdi (AJ), recited on Friday mornings. It mourns the absence of the Imam while expressing hope and longing for his reappearance.',
  ),
  _DuaAudioEntry(
    id: 'samat',
    nameEn: 'Dua al-Samat',
    nameAr: 'دعاء السمات',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    occasion: 'Friday afternoons',
    duration: '~18 min',
    audioUrl: 'https://mp3.duas.org/Misc%20Duas/simaatabather.mp3',
    accent: AppColors.crimsonLight,
    section: _DuaSection.weekly,
    description:
        'A supplication invoking Allah\'s greatest names. Recited on Friday afternoons, it is known for its extraordinary power and the depth of its invocations of divine attributes.',
  ),
  _DuaAudioEntry(
    id: 'sha_ban',
    nameEn: 'Munajat Sha\'baniyya',
    nameAr: 'المناجاة الشعبانية',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    occasion: 'Month of Sha\'ban',
    duration: '~8 min',
    audioUrl: 'https://mp3.duas.org/shabania%20munajaat.mp3',
    accent: AppColors.emeraldBright,
    section: _DuaSection.weekly,
    description:
        'The intimate whispered prayer of Sha\'ban, recited by Imam Ali and all the Imams after him throughout the blessed month. A deeply personal conversation between the servant and Allah.',
  ),

  // ── Anytime ────────────────────────────────────────────────────────────────
  _DuaAudioEntry(
    id: 'tawassul',
    nameEn: 'Dua Tawassul',
    nameAr: 'دعاء التوسل',
    imam: 'Transmitted through the Ahl al-Bayt',
    occasion: 'For intercession',
    duration: '~15 min',
    audioUrl: 'https://mp3.duas.org/Misc%20Duas/2_Tawassul.mp3',
    accent: AppColors.gold,
    section: _DuaSection.anytime,
    description:
        'A supplication seeking intercession through the Prophet (SAW) and the Fourteen Infallibles. Recited when seeking closeness to Allah through the blessed intermediaries of the Ahl al-Bayt.',
  ),
  _DuaAudioEntry(
    id: 'ahd',
    nameEn: 'Dua al-Ahd',
    nameAr: 'دعاء العهد',
    imam: 'Imam Ja\'far al-Sadiq (AS)',
    occasion: 'Every morning for 40 days',
    duration: '~6 min',
    audioUrl: 'https://mp3.duas.org/dua_ahad_ali_fani.mp3',
    accent: AppColors.emeraldBright,
    section: _DuaSection.anytime,
    description:
        'A covenant of allegiance to Imam al-Mahdi (AJ). The Prophet (SAW) stated that whoever recites it for 40 consecutive mornings will be counted among the supporters of the Imam upon his reappearance.',
  ),
  _DuaAudioEntry(
    id: 'sabah',
    nameEn: 'Dua Sabah',
    nameAr: 'دعاء الصباح',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    occasion: 'Every morning',
    duration: '~7 min',
    audioUrl: 'https://mp3.duas.org/Misc%20Duas/Dua_Sabah.mp3',
    accent: AppColors.gold,
    section: _DuaSection.anytime,
    description:
        'The morning supplication of Imam Ali (AS), a sublime opening of the day with praise, gratitude and seeking of divine guidance. Its language is of unparalleled eloquence, reflecting the spiritual station of the Commander of the Faithful.',
  ),
  _DuaAudioEntry(
    id: 'mashlool',
    nameEn: 'Dua Mashlool',
    nameAr: 'دعاء المشلول',
    imam: 'Imam Ali ibn Abi Talib (AS)',
    occasion: 'For healing & forgiveness',
    duration: '~25 min',
    audioUrl: null,
    accent: AppColors.crimsonLight,
    section: _DuaSection.anytime,
    description:
        'Known as the Supplication of the Paralysed Youth, this dua was taught by Imam Ali (AS) to a young man afflicted with paralysis. Recited for healing, forgiveness, and relief from hardship, it is a comprehensive invocation of Allah\'s mercy.',
  ),
  _DuaAudioEntry(
    id: 'arafah',
    nameEn: 'Dua al-Arafah',
    nameAr: 'دعاء عرفة',
    imam: 'Imam Husayn ibn Ali (AS)',
    occasion: 'Day of Arafah (9 Dhu al-Hijja)',
    duration: '~35 min',
    audioUrl: null,
    accent: AppColors.emeraldBright,
    section: _DuaSection.anytime,
    description:
        'The supplication of Imam Husayn (AS) recited on the plain of Arafat on the 9th of Dhu al-Hijja. One of the most spiritually elevated duas ever recorded, it is a profound theological discourse on divine attributes, human servitude, and the nature of closeness to Allah.',
  ),
];

// ─────────────────────────────────────────────────────────────────────────────
// Screen
// ─────────────────────────────────────────────────────────────────────────────

class DuaAudioScreen extends StatefulWidget {
  const DuaAudioScreen({super.key});

  @override
  State<DuaAudioScreen> createState() => _DuaAudioScreenState();
}

class _DuaAudioScreenState extends State<DuaAudioScreen> {
  final AudioPlayer _player = AudioPlayer();

  String? _activeId;
  PlayerState _playerState = PlayerState.stopped;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _player.onPlayerStateChanged.listen((state) {
      if (mounted) setState(() => _playerState = state);
    });
    _player.onPositionChanged.listen((pos) {
      if (mounted) setState(() => _position = pos);
    });
    _player.onDurationChanged.listen((dur) {
      if (mounted) setState(() => _duration = dur);
    });
    _player.onPlayerComplete.listen((_) {
      if (mounted) {
        setState(() {
          _position = Duration.zero;
          _playerState = PlayerState.stopped;
        });
      }
    });
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  Future<void> _playPause(_DuaAudioEntry entry) async {
    if (entry.audioUrl == null) return;

    HapticFeedback.lightImpact();

    if (_activeId == entry.id) {
      // Same track — toggle play/pause
      if (_playerState == PlayerState.playing) {
        await _player.pause();
      } else {
        await _player.resume();
      }
      return;
    }

    // New track
    setState(() {
      _loading = true;
      _activeId = entry.id;
      _position = Duration.zero;
      _duration = Duration.zero;
    });

    try {
      await _player.stop();
      await _player.play(UrlSource(entry.audioUrl!));
    } catch (e) {
      if (mounted) {
        setState(() {
          _loading = false;
          _activeId = null;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context).duaAudioError,
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: AppColors.navy,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
          ),
        );
      }
      return;
    }

    if (mounted) setState(() => _loading = false);
  }

  Future<void> _stop() async {
    HapticFeedback.lightImpact();
    await _player.stop();
    if (mounted) {
      setState(() {
        _activeId = null;
        _position = Duration.zero;
      });
    }
  }

  String _formatDuration(Duration d) {
    final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  @override
  Widget build(BuildContext context) {
    final activeEntry = _activeId != null
        ? _duaAudioLibrary.firstWhere((e) => e.id == _activeId,
            orElse: () => _duaAudioLibrary.first)
        : null;

    return Scaffold(
      backgroundColor: AppColors.deepNavy,
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.navy, AppColors.deepNavy, AppColors.navyDeep],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0, right: 0,
            child: IgnorePointer(
              child: SizedBox(
                width: 260, height: 260,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [AppColors.gold.withValues(alpha: 0.10), Colors.transparent],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                // ── Top bar ───────────────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 6, 8, 0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new_rounded,
                            color: AppColors.gold),
                        onPressed: () {
                          HapticFeedback.lightImpact();
                          Navigator.of(context).pop();
                        },
                      ),
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context).duaAudioScreenTitle,
                          style: GoogleFonts.lora(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: AppColors.gold,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ── Subtitle ──────────────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
                  child: Text(
                    AppLocalizations.of(context).duaAudioScreenSubtitle,
                    style: TextStyle(
                      color: AppColors.textDim,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ).animate().fadeIn(duration: 400.ms),
                ),

                // ── Library list ──────────────────────────────────────────
                Expanded(
                  child: _FeatureLock(
                    child: _buildLibraryList(context),
                  ),
                ),
              ],
            ),
          ),

          // ── Mini player (bottom) — premium only ──────────────────────
          if (activeEntry != null &&
              (UsageService.instance.current?.plan ?? 'basic') == 'premium')
            Positioned(
              left: 0, right: 0, bottom: 0,
              child: _MiniPlayer(
                entry: activeEntry,
                playerState: _playerState,
                position: _position,
                duration: _duration,
                formatDuration: _formatDuration,
                onPlayPause: () => _playPause(activeEntry),
                onStop: _stop,
                onSeek: (val) =>
                    _player.seek(Duration(seconds: (val * _duration.inSeconds).round())),
              ),
            ),
        ],
      ),
    );
  }

  void _showComingSoon(BuildContext context, _DuaAudioEntry entry) {
    HapticFeedback.selectionClick();
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => _ComingSoonSheet(entry: entry),
    );
  }

  void _showDetail(BuildContext context, _DuaAudioEntry entry) {
    HapticFeedback.selectionClick();
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => _DetailSheet(entry: entry),
    );
  }

  Widget _buildLibraryList(BuildContext context) {
    // Build a flat list interleaved with section headers
    final items = <Object>[];
    _DuaSection? lastSection;
    for (final entry in _duaAudioLibrary) {
      if (entry.section != lastSection) {
        items.add(entry.section);
        lastSection = entry.section;
      }
      items.add(entry);
    }

    // Track the dua index separately for stagger animation
    int duaIndex = 0;

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
      itemCount: items.length,
      itemBuilder: (context, i) {
        final item = items[i];
        if (item is _DuaSection) {
          return _SectionHeader(section: item);
        }
        final entry = item as _DuaAudioEntry;
        final idx = duaIndex++;
        final isActive = _activeId == entry.id;
        final isPlaying = isActive && _playerState == PlayerState.playing;
        return _DuaTile(
          entry: entry,
          isActive: isActive,
          isPlaying: isPlaying,
          isLoading: isActive && _loading,
          index: idx,
          onTap: () => entry.audioUrl != null
              ? _playPause(entry)
              : _showComingSoon(context, entry),
          onInfo: () => _showDetail(context, entry),
        );
      },
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Dua tile
// ─────────────────────────────────────────────────────────────────────────────

class _DuaTile extends StatelessWidget {
  final _DuaAudioEntry entry;
  final bool isActive;
  final bool isPlaying;
  final bool isLoading;
  final int index;
  final VoidCallback onTap;
  final VoidCallback onInfo;

  const _DuaTile({
    required this.entry,
    required this.isActive,
    required this.isPlaying,
    required this.isLoading,
    required this.index,
    required this.onTap,
    required this.onInfo,
  });

  @override
  Widget build(BuildContext context) {
    final hasAudio = entry.audioUrl != null;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isActive
              ? entry.accent.withValues(alpha: 0.10)
              : AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isActive
                ? entry.accent.withValues(alpha: 0.45)
                : entry.accent.withValues(alpha: 0.18),
            width: isActive ? 1.2 : 0.8,
          ),
        ),
        child: Row(
          children: [
            // Play button
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive
                    ? entry.accent.withValues(alpha: 0.20)
                    : entry.accent.withValues(alpha: 0.10),
                border: Border.all(
                  color: hasAudio
                      ? entry.accent.withValues(alpha: isActive ? 0.6 : 0.35)
                      : Colors.white.withValues(alpha: 0.15),
                  width: 1.5,
                ),
              ),
              child: isLoading
                  ? Padding(
                      padding: const EdgeInsets.all(13),
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: entry.accent,
                      ),
                    )
                  : Icon(
                      hasAudio
                          ? (isPlaying
                              ? Icons.pause_rounded
                              : Icons.play_arrow_rounded)
                          : Icons.lock_outline_rounded,
                      color: hasAudio
                          ? (isActive ? entry.accent : entry.accent.withValues(alpha: 0.7))
                          : Colors.white.withValues(alpha: 0.3),
                      size: hasAudio ? 24 : 18,
                    ),
            ),

            const SizedBox(width: 14),

            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          entry.nameEn,
                          style: TextStyle(
                            color: isActive
                                ? AppColors.textPrimary
                                : AppColors.textPrimary,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    entry.nameAr,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: entry.accent.withValues(alpha: 0.75),
                      fontSize: 12,
                      fontFamily: 'Arial',
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.access_time_rounded,
                          color: AppColors.textDim, size: 11),
                      const SizedBox(width: 3),
                      Text(
                        entry.duration,
                        style: const TextStyle(
                          color: AppColors.textDim,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(Icons.event_rounded,
                          color: AppColors.textDim, size: 11),
                      const SizedBox(width: 3),
                      Expanded(
                        child: Text(
                          entry.occasion,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: AppColors.textDim,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Info button
            GestureDetector(
              onTap: onInfo,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 8),
                child: Icon(
                  Icons.info_outline_rounded,
                  color: entry.accent.withValues(alpha: 0.5),
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ).animate(delay: Duration(milliseconds: index * 50))
          .fadeIn(duration: 350.ms)
          .slideY(begin: 0.04, end: 0),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Section header
// ─────────────────────────────────────────────────────────────────────────────

class _SectionHeader extends StatelessWidget {
  final _DuaSection section;
  const _SectionHeader({required this.section});

  String _label() {
    switch (section) {
      case _DuaSection.ziyarat: return 'ZIYARAT';
      case _DuaSection.ramadan: return 'RAMADAN';
      case _DuaSection.weekly:  return 'WEEKLY';
      case _DuaSection.anytime: return 'ANYTIME';
    }
  }

  IconData _icon() {
    switch (section) {
      case _DuaSection.ziyarat: return Icons.mosque_rounded;
      case _DuaSection.ramadan: return Icons.nightlight_rounded;
      case _DuaSection.weekly:  return Icons.repeat_rounded;
      case _DuaSection.anytime: return Icons.auto_awesome_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 20, 2, 8),
      child: Row(
        children: [
          Icon(_icon(), color: AppColors.textMuted, size: 12),
          const SizedBox(width: 6),
          Text(
            _label(),
            style: const TextStyle(
              color: AppColors.textMuted,
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.4,
            ),
          ),
          const SizedBox(width: 8),
          const Expanded(
            child: Divider(height: 1, color: AppColors.border),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Mini player
// ─────────────────────────────────────────────────────────────────────────────

class _MiniPlayer extends StatelessWidget {
  final _DuaAudioEntry entry;
  final PlayerState playerState;
  final Duration position;
  final Duration duration;
  final String Function(Duration) formatDuration;
  final VoidCallback onPlayPause;
  final VoidCallback onStop;
  final ValueChanged<double> onSeek;

  const _MiniPlayer({
    required this.entry,
    required this.playerState,
    required this.position,
    required this.duration,
    required this.formatDuration,
    required this.onPlayPause,
    required this.onStop,
    required this.onSeek,
  });

  @override
  Widget build(BuildContext context) {
    final progress = duration.inMilliseconds > 0
        ? (position.inMilliseconds / duration.inMilliseconds).clamp(0.0, 1.0)
        : 0.0;
    final isPlaying = playerState == PlayerState.playing;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.navy,
        border: Border(
          top: BorderSide(color: entry.accent.withValues(alpha: 0.35), width: 1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 20,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Progress bar
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 2,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 5),
                  overlayShape:
                      const RoundSliderOverlayShape(overlayRadius: 12),
                  activeTrackColor: entry.accent,
                  inactiveTrackColor:
                      Colors.white.withValues(alpha: 0.12),
                  thumbColor: entry.accent,
                  overlayColor: entry.accent.withValues(alpha: 0.20),
                ),
                child: Slider(
                  value: progress,
                  onChanged: onSeek,
                ),
              ),

              // Time + controls
              Row(
                children: [
                  Text(
                    formatDuration(position),
                    style: TextStyle(
                      color: AppColors.textDim,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  // Title
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        entry.nameEn,
                        style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        entry.imam,
                        style: const TextStyle(
                          color: AppColors.textDim,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    duration.inSeconds > 0 ? formatDuration(duration) : '--:--',
                    style: TextStyle(
                      color: AppColors.textDim,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),

              // Playback controls
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Rewind 10s
                  IconButton(
                    icon: const Icon(Icons.replay_10_rounded),
                    color: Colors.white.withValues(alpha: 0.6),
                    iconSize: 26,
                    onPressed: () {
                      final newPos = Duration(
                        seconds: (position.inSeconds - 10).clamp(0, duration.inSeconds),
                      );
                      onSeek(duration.inSeconds > 0
                          ? newPos.inSeconds / duration.inSeconds
                          : 0.0);
                    },
                  ),
                  const SizedBox(width: 8),
                  // Play/Pause
                  GestureDetector(
                    onTap: onPlayPause,
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: entry.accent.withValues(alpha: 0.18),
                        border: Border.all(
                            color: entry.accent.withValues(alpha: 0.55),
                            width: 1.5),
                      ),
                      child: Icon(
                        isPlaying
                            ? Icons.pause_rounded
                            : Icons.play_arrow_rounded,
                        color: entry.accent,
                        size: 28,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Forward 10s
                  IconButton(
                    icon: const Icon(Icons.forward_10_rounded),
                    color: Colors.white.withValues(alpha: 0.6),
                    iconSize: 26,
                    onPressed: () {
                      final newPos = Duration(
                        seconds: (position.inSeconds + 10).clamp(0, duration.inSeconds),
                      );
                      onSeek(duration.inSeconds > 0
                          ? newPos.inSeconds / duration.inSeconds
                          : 0.0);
                    },
                  ),
                  const SizedBox(width: 16),
                  // Stop
                  IconButton(
                    icon: const Icon(Icons.stop_rounded),
                    color: Colors.white.withValues(alpha: 0.4),
                    iconSize: 22,
                    onPressed: onStop,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ).animate().slideY(begin: 1, end: 0, duration: 280.ms, curve: Curves.easeOut);
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Bottom sheets
// ─────────────────────────────────────────────────────────────────────────────

class _ComingSoonSheet extends StatelessWidget {
  final _DuaAudioEntry entry;
  const _ComingSoonSheet({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.navy,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.borderMid),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 52, height: 52,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: entry.accent.withValues(alpha: 0.12),
              border: Border.all(color: entry.accent.withValues(alpha: 0.35)),
            ),
            child: Icon(Icons.headphones_rounded,
                color: entry.accent, size: 24),
          ),
          const SizedBox(height: 16),
          Text(
            entry.nameEn,
            textAlign: TextAlign.center,
            style: GoogleFonts.lora(
              color: AppColors.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            AppLocalizations.of(context).duaAudioComingSoonMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.textDim,
              fontSize: 13,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: entry.accent.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: entry.accent.withValues(alpha: 0.30)),
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context).duaAudioClose,
                  style: TextStyle(
                    color: entry.accent,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailSheet extends StatelessWidget {
  final _DuaAudioEntry entry;
  const _DetailSheet({required this.entry});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      minChildSize: 0.35,
      maxChildSize: 0.85,
      builder: (_, controller) => Container(
        margin: const EdgeInsets.only(top: 12),
        decoration: const BoxDecoration(
          color: AppColors.navy,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          children: [
            // Handle
            Container(
              margin: const EdgeInsets.only(top: 12),
              width: 40, height: 4,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Expanded(
              child: ListView(
                controller: controller,
                padding: const EdgeInsets.all(24),
                children: [
                  // Arabic name
                  Text(
                    entry.nameAr,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.amiri(
                      color: entry.accent,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    entry.nameEn,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lora(
                      color: AppColors.textPrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Meta
                  _MetaRow(
                      icon: Icons.person_outline_rounded,
                      label: AppLocalizations.of(context).duaAudioMetaTransmittedBy,
                      value: entry.imam,
                      accent: entry.accent),
                  const SizedBox(height: 8),
                  _MetaRow(
                      icon: Icons.event_rounded,
                      label: AppLocalizations.of(context).duaAudioMetaOccasion,
                      value: entry.occasion,
                      accent: entry.accent),
                  const SizedBox(height: 8),
                  _MetaRow(
                      icon: Icons.access_time_rounded,
                      label: AppLocalizations.of(context).duaAudioMetaDuration,
                      value: entry.duration,
                      accent: entry.accent),

                  const SizedBox(height: 20),
                  Container(height: 1, color: AppColors.border),
                  const SizedBox(height: 20),

                  // Description
                  Text(
                    entry.description,
                    style: GoogleFonts.lora(
                      color: AppColors.textPrimary,
                      fontSize: 14.5,
                      height: 1.75,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MetaRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color accent;
  const _MetaRow(
      {required this.icon,
      required this.label,
      required this.value,
      required this.accent});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: accent, size: 14),
        const SizedBox(width: 8),
        Text(
          '$label  ',
          style: TextStyle(
            color: accent,
            fontSize: 11,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.3,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              color: AppColors.textDim,
              fontSize: 11,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Premium gate overlay
// ─────────────────────────────────────────────────────────────────────────────

class _FeatureLock extends StatelessWidget {
  final Widget child;
  const _FeatureLock({required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: UsageService.instance,
      builder: (context, _) {
        final isPremium =
            (UsageService.instance.current?.plan ?? 'basic') == 'premium';

        if (isPremium) return child;

        final t = AppLocalizations.of(context);

        return Stack(
          children: [
            // Greyed-out, non-interactive content
            ColorFiltered(
              colorFilter: const ColorFilter.matrix([
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                0,      0,      0,      0.45, 0,
              ]),
              child: IgnorePointer(child: child),
            ),
            // Lock overlay
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  HapticFeedback.selectionClick();
                  Navigator.pushNamed(context, '/settings');
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.38),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.22),
                          ),
                        ),
                        child: const Icon(
                          Icons.lock_rounded,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        t.premiumFeatureLocked,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.92),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          height: 1.3,
                          shadows: [
                            Shadow(
                              color: Colors.black.withValues(alpha: 0.65),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 9),
                        decoration: BoxDecoration(
                          color: AppColors.gold.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                            color: AppColors.gold.withValues(alpha: 0.70),
                            width: 1.2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.30),
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Text(
                          t.premiumButtonBecomePremium,
                          style: const TextStyle(
                            color: AppColors.gold,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
