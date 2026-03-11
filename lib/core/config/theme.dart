import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Ayara brand colors — dark Islamic palette (matches ayara-site).
abstract final class AppColors {
  // ── Deep Navy backgrounds ───────────────────────────────────────────────
  static const deepNavy  = Color(0xFF060C18); // main background
  static const navy      = Color(0xFF0B1628); // secondary background
  static const navyDeep  = Color(0xFF04080F); // deepest background

  // ── Crimson / Karbala family ────────────────────────────────────────────
  static const crimsonDeep  = Color(0xFF8C1C2F);
  static const crimson      = Color(0xFFB52344);
  static const crimsonBright = Color(0xFFC23B5A);
  static const crimsonLight  = Color(0xFFE8708A);

  // ── Gold / Islamic richness ──────────────────────────────────────────────
  static const goldDim    = Color(0xFF8A6B20);
  static const gold       = Color(0xFFC9A84C);
  static const goldBright = Color(0xFFF0D080);

  // ── Emerald / Ahl al-Bayt ───────────────────────────────────────────────
  static const emeraldDeep   = Color(0xFF0B4A30);
  static const emerald       = Color(0xFF1A7A50);
  static const emeraldBright = Color(0xFF26B070);
  static const emeraldLight  = Color(0xFF5EE8A8);

  // ── Text ────────────────────────────────────────────────────────────────
  static const textPrimary = Color(0xFFF0E8D8); // warm off-white
  static const textDim     = Color(0xFFB8A890); // secondary text
  static const textMuted   = Color(0xFF7A6A58); // tertiary/muted

  // ── Surfaces & borders ──────────────────────────────────────────────────
  static const surface     = Color(0xCC0A1226); // card surface (80% opacity)
  static const surfaceMid  = Color(0xE60A1226); // elevated surface
  static const border      = Color(0x1FC9A84C); // gold border 12%
  static const borderMid   = Color(0x47C9A84C); // gold border 28%
  static const borderBright = Color(0x8CC9A84C); // gold border 55%

  // ── Backward-compat aliases ──────────────────────────────────────────────
  static const islamic      = crimson;
  static const islamicDeep  = crimsonDeep;
  static const islamicLight = crimsonBright;
  static const navyLight    = emerald;
  static const warmWhite    = textPrimary;
  static const cream        = textDim;
  static const white        = Color(0xFFFFFFFF);
  static const goldLight    = goldBright;
  static const goldSubtle   = Color(0x33C9A84C); // gold 20%
  static const iconWarm     = gold;
  static const textSecondary = textDim;
  static const borderColor   = border;
}

class AppTheme {
  // Single dark Islamic theme — always dark, no light variant.
  static ThemeData dark() {
    const cs = ColorScheme(
      brightness: Brightness.dark,
      // Primary — crimson (Karbala)
      primary:              AppColors.crimsonBright,
      onPrimary:            AppColors.textPrimary,
      primaryContainer:     AppColors.crimsonDeep,
      onPrimaryContainer:   AppColors.crimsonLight,
      // Secondary — gold
      secondary:            AppColors.gold,
      onSecondary:          AppColors.navyDeep,
      secondaryContainer:   AppColors.goldDim,
      onSecondaryContainer: AppColors.goldBright,
      // Tertiary — emerald
      tertiary:             AppColors.emeraldBright,
      onTertiary:           AppColors.navyDeep,
      tertiaryContainer:    AppColors.emeraldDeep,
      onTertiaryContainer:  AppColors.emeraldLight,
      // Surfaces — deep navy
      surface:              AppColors.navy,
      onSurface:            AppColors.textPrimary,
      surfaceContainerHighest: AppColors.surfaceMid,
      onSurfaceVariant:     AppColors.textDim,
      // Outline
      outline:              AppColors.border,
      outlineVariant:       AppColors.borderMid,
      // Error
      error:   Color(0xFFE8708A),
      onError: AppColors.navyDeep,
      // Scrim
      scrim: AppColors.navyDeep,
    );

    final base = ThemeData(
      useMaterial3: true,
      colorScheme:  cs,
    );

    return base.copyWith(
      scaffoldBackgroundColor: AppColors.deepNavy,

      appBarTheme: AppBarTheme(
        backgroundColor:  AppColors.deepNavy,
        foregroundColor:  AppColors.textPrimary,
        elevation:        0,
        centerTitle:      true,
        titleTextStyle: GoogleFonts.cinzel(
          fontSize:      18,
          fontWeight:    FontWeight.w700,
          color:         AppColors.goldBright,
          letterSpacing: 0.5,
        ),
        iconTheme: const IconThemeData(color: AppColors.gold),
      ),

      cardTheme: CardThemeData(
        color:            AppColors.surface,
        surfaceTintColor: Colors.transparent,
        shadowColor:      const Color(0x66000000),
        elevation:        0,
        margin:           const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          side: const BorderSide(color: AppColors.border, width: 0.8),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled:      true,
        fillColor:   AppColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.gold, width: 1.6),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        hintStyle: const TextStyle(color: AppColors.textMuted),
      ),

      textTheme: GoogleFonts.ralewayTextTheme(base.textTheme).copyWith(
        headlineLarge: GoogleFonts.cinzel(
          fontSize:      32,
          fontWeight:    FontWeight.w700,
          color:         AppColors.goldBright,
          letterSpacing: 0.5,
        ),
        headlineMedium: GoogleFonts.cinzel(
          fontSize:      26,
          fontWeight:    FontWeight.w700,
          color:         AppColors.goldBright,
          letterSpacing: 0.3,
        ),
        headlineSmall: GoogleFonts.cinzel(
          fontSize:      22,
          fontWeight:    FontWeight.w600,
          color:         AppColors.goldBright,
        ),
        titleLarge: GoogleFonts.cinzel(
          fontSize:      18,
          fontWeight:    FontWeight.w600,
          color:         AppColors.gold,
          letterSpacing: 0.3,
        ),
        titleMedium: GoogleFonts.raleway(
          fontSize:      16,
          fontWeight:    FontWeight.w600,
          color:         AppColors.textPrimary,
        ),
        titleSmall: GoogleFonts.raleway(
          fontSize:      14,
          fontWeight:    FontWeight.w600,
          color:         AppColors.textDim,
        ),
        bodyLarge: GoogleFonts.raleway(
          fontSize: 16,
          color:    AppColors.textPrimary,
          height:   1.6,
        ),
        bodyMedium: GoogleFonts.raleway(
          fontSize: 15,
          color:    AppColors.textPrimary,
          height:   1.55,
        ),
        bodySmall: GoogleFonts.raleway(
          fontSize: 13,
          color:    AppColors.textDim,
          height:   1.5,
        ),
        labelLarge: GoogleFonts.raleway(
          fontSize:      15,
          fontWeight:    FontWeight.w600,
          color:         AppColors.gold,
          letterSpacing: 0.1,
        ),
        labelMedium: GoogleFonts.raleway(
          fontSize: 13,
          color:    AppColors.textDim,
        ),
        labelSmall: GoogleFonts.raleway(
          fontSize:      11,
          color:         AppColors.textMuted,
          letterSpacing: 0.4,
        ),
      ),

      // ── Buttons ────────────────────────────────────────────────────────

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.crimsonBright,
          foregroundColor: AppColors.textPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          textStyle: GoogleFonts.raleway(
            fontWeight:    FontWeight.w700,
            fontSize:      15,
            letterSpacing: 0.2,
          ),
          elevation: 0,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.crimsonBright,
          foregroundColor: AppColors.textPrimary,
          shadowColor:     const Color(0x44C23B5A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          textStyle: GoogleFonts.raleway(
            fontWeight:    FontWeight.w700,
            fontSize:      15,
            letterSpacing: 0.2,
          ),
          elevation: 2,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.gold,
          side: const BorderSide(color: AppColors.borderMid, width: 1.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          textStyle: GoogleFonts.raleway(
            fontWeight:    FontWeight.w600,
            fontSize:      15,
            letterSpacing: 0.2,
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.gold,
          textStyle: GoogleFonts.raleway(
            fontWeight:    FontWeight.w600,
            fontSize:      14,
            letterSpacing: 0.1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),

      // ── Misc ──────────────────────────────────────────────────────────

      dividerTheme: const DividerThemeData(
        color:     AppColors.border,
        thickness: 0.8,
        space:     1,
      ),

      chipTheme: ChipThemeData(
        backgroundColor: AppColors.surface,
        labelStyle: GoogleFonts.raleway(
          color:      AppColors.gold,
          fontWeight: FontWeight.w600,
          fontSize:   13,
        ),
        side:  const BorderSide(color: AppColors.borderMid, width: 0.8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.navy,
        contentTextStyle: GoogleFonts.raleway(color: AppColors.textPrimary),
        actionTextColor:  AppColors.goldBright,
        behavior:         SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: AppColors.border),
        ),
      ),

      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor:  AppColors.navy,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
      ),

      dialogTheme: DialogThemeData(
        backgroundColor:  AppColors.navy,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.cinzel(
          color:      AppColors.goldBright,
          fontSize:   18,
          fontWeight: FontWeight.w700,
        ),
        contentTextStyle: GoogleFonts.raleway(
          color:    AppColors.textDim,
          fontSize: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: AppColors.border),
        ),
      ),

      listTileTheme: const ListTileThemeData(
        iconColor:      AppColors.gold,
        textColor:      AppColors.textPrimary,
        tileColor:      Colors.transparent,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((s) =>
            s.contains(WidgetState.selected)
                ? AppColors.goldBright
                : AppColors.textMuted),
        trackColor: WidgetStateProperty.resolveWith((s) =>
            s.contains(WidgetState.selected)
                ? AppColors.goldDim
                : AppColors.surface),
        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.gold,
      ),

      popupMenuTheme: PopupMenuThemeData(
        color:       AppColors.navy,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: AppColors.border),
        ),
        textStyle: GoogleFonts.raleway(
          color:    AppColors.textPrimary,
          fontSize: 14,
        ),
      ),
    );
  }

  /// Legacy alias — kept so existing call-sites compile without change.
  static ThemeData light() => dark();
}
