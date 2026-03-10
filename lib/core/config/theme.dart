import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Ayara brand colors — Shia Islamic deep green / gold palette.
abstract final class AppColors {
  // ── Deep Greens (backgrounds / primary) ────────────────────────────────
  static const islamicDeep  = Color(0xFF040A06);  // near-black with green — main bg
  static const islamic      = Color(0xFF0C3A1E);  // deep forest / Islamic green
  static const islamicLight = Color(0xFF1A5C35);  // mid Islamic green — hover / container

  // ── Gold / Amber (sacred accent) ────────────────────────────────────────
  static const gold        = Color(0xFFC49A3C);   // warm Islamic gold
  static const goldLight   = Color(0xFFD4B05A);
  static const goldSubtle  = Color(0xFFF2EAD0);

  // ── Warm / Cream surfaces ────────────────────────────────────────────────
  static const warmWhite = Color(0xFFF5F1E8);  // soft off-white
  static const cream     = Color(0xFFEADFCA);  // warm cream
  static const white     = Color(0xFFFFFFFF);

  // ── Icon tint ────────────────────────────────────────────────────────────
  static const iconWarm  = Color(0xFFBF9845);

  // ── Text (for light surfaces — cards, settings, etc.) ────────────────────
  static const textPrimary   = Color(0xFF0A1E0E);
  static const textSecondary = Color(0xFF2A5A38);
  static const textMuted     = Color(0xFF5A8A65);

  // ── Borders ──────────────────────────────────────────────────────────────
  static const border = Color(0xFFCED9CA);

  // ── Backward-compat aliases (keep all existing usages compiling) ─────────
  static const crimsonDeep  = islamicDeep;
  static const crimson      = islamic;
  static const crimsonLight = islamicLight;
  static const navy      = islamic;
  static const navyLight = islamicLight;
  static const navyDeep  = islamicDeep;
}

class AppTheme {
  static ThemeData light() {
    const cs = ColorScheme(
      brightness: Brightness.light,
      // Primary — deep crimson
      primary:              AppColors.islamic,
      onPrimary:            AppColors.white,
      primaryContainer:     AppColors.islamicLight,
      onPrimaryContainer:   AppColors.goldSubtle,
      // Secondary — gold
      secondary:            AppColors.gold,
      onSecondary:          AppColors.islamicDeep,
      secondaryContainer:   AppColors.goldSubtle,
      onSecondaryContainer: AppColors.islamic,
      // Tertiary — gold-light accent
      tertiary:             AppColors.goldLight,
      onTertiary:           AppColors.islamic,
      tertiaryContainer:    AppColors.goldSubtle,
      onTertiaryContainer:  AppColors.islamic,
      // Surfaces — warm parchment
      surface:                    AppColors.warmWhite,
      onSurface:                  AppColors.textPrimary,
      surfaceContainerHighest:    AppColors.cream,
      onSurfaceVariant:           AppColors.textSecondary,
      // Outline
      outline:        AppColors.border,
      outlineVariant: AppColors.border,
      // Error
      error:   Color(0xFFB00020),
      onError: AppColors.white,
      // Scrim / shadow
      scrim: AppColors.islamicDeep,
    );

    final base = ThemeData(
      useMaterial3: true,
      colorScheme: cs,
    );

    return base.copyWith(
      scaffoldBackgroundColor: AppColors.warmWhite,

      appBarTheme: const AppBarTheme(
        backgroundColor:  Colors.transparent,
        foregroundColor:  AppColors.islamic,
        elevation:        0,
        centerTitle:      true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize:   18,
          color:      AppColors.islamic,
          letterSpacing: 0.2,
        ),
        iconTheme: IconThemeData(color: AppColors.crimson),
      ),

      cardTheme: const CardThemeData(
        color:            AppColors.white,
        surfaceTintColor: Colors.transparent,
        shadowColor:      Color(0x140C3A1E),
        elevation:        2,
        margin:           EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          side: BorderSide(color: AppColors.border, width: 0.8),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled:      true,
        fillColor:   AppColors.white,
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

      textTheme: GoogleFonts.ralewayTextTheme(base.textTheme.copyWith(
        headlineLarge: const TextStyle(
          fontSize:   32,
          fontWeight: FontWeight.w800,
          color:      AppColors.islamic,
          letterSpacing: -0.5,
        ),
        headlineMedium: const TextStyle(
          fontSize:   26,
          fontWeight: FontWeight.w700,
          color:      AppColors.islamic,
        ),
        headlineSmall: const TextStyle(
          fontSize:   22,
          fontWeight: FontWeight.w700,
          color:      AppColors.islamic,
        ),
        titleLarge: const TextStyle(
          fontSize:   18,
          fontWeight: FontWeight.w700,
          color:      AppColors.islamic,
          letterSpacing: 0.1,
        ),
        titleMedium: const TextStyle(
          fontSize:   16,
          fontWeight: FontWeight.w600,
          color:      AppColors.islamic,
        ),
        bodyLarge: const TextStyle(
          fontSize: 16,
          color:    AppColors.textPrimary,
          height:   1.55,
        ),
        bodyMedium: const TextStyle(
          fontSize: 15,
          color:    AppColors.textPrimary,
          height:   1.5,
        ),
        bodySmall: const TextStyle(
          fontSize: 13,
          color:    AppColors.textSecondary,
          height:   1.4,
        ),
        labelLarge: const TextStyle(
          fontSize:   15,
          fontWeight: FontWeight.w600,
          color:      AppColors.islamic,
          letterSpacing: 0.1,
        ),
        labelMedium: const TextStyle(
          fontSize: 13,
          color:    AppColors.textMuted,
        ),
        labelSmall: const TextStyle(
          fontSize: 11,
          color:    AppColors.textMuted,
          letterSpacing: 0.3,
        ),
      )),

      // ── Buttons ──────────────────────────────────────────────────────────

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.islamic,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          textStyle: const TextStyle(
            fontWeight:    FontWeight.w700,
            fontSize:      15,
            letterSpacing: 0.2,
          ),
          elevation: 0,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.islamic,
          foregroundColor: AppColors.white,
          shadowColor:     const Color(0x280C3A1E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          textStyle: const TextStyle(
            fontWeight:    FontWeight.w700,
            fontSize:      15,
            letterSpacing: 0.2,
          ),
          elevation: 2,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.islamic,
          side: const BorderSide(color: AppColors.islamic, width: 1.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          textStyle: const TextStyle(
            fontWeight:    FontWeight.w600,
            fontSize:      15,
            letterSpacing: 0.2,
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.islamic,
          textStyle: const TextStyle(
            fontWeight:    FontWeight.w600,
            fontSize:      14,
            letterSpacing: 0.1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),

      // ── Misc ─────────────────────────────────────────────────────────────

      dividerTheme: const DividerThemeData(
        color:     AppColors.border,
        thickness: 0.8,
        space:     1,
      ),

      chipTheme: ChipThemeData(
        backgroundColor:   AppColors.goldSubtle,
        labelStyle:        const TextStyle(color: AppColors.islamic, fontWeight: FontWeight.w600),
        side:              const BorderSide(color: AppColors.gold, width: 0.8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      ),

      snackBarTheme: const SnackBarThemeData(
        backgroundColor: AppColors.islamicDeep,
        contentTextStyle: TextStyle(color: AppColors.warmWhite),
        actionTextColor:  AppColors.goldLight,
        behavior:         SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),

      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor:  AppColors.warmWhite,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
      ),

      dialogTheme: DialogThemeData(
        backgroundColor:  AppColors.warmWhite,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: const TextStyle(
          color:      AppColors.islamic,
          fontSize:   18,
          fontWeight: FontWeight.w700,
        ),
        contentTextStyle: const TextStyle(
          color:   AppColors.textSecondary,
          fontSize: 15,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),

      listTileTheme: const ListTileThemeData(
        iconColor:   AppColors.islamic,
        textColor:   AppColors.textPrimary,
        tileColor:   Colors.transparent,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      ),

      switchTheme: SwitchThemeData(
        thumbColor:  WidgetStateProperty.resolveWith((s) =>
            s.contains(WidgetState.selected) ? AppColors.gold : AppColors.textMuted),
        trackColor:  WidgetStateProperty.resolveWith((s) =>
            s.contains(WidgetState.selected)
                ? AppColors.goldSubtle
                : AppColors.cream),
        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
      ),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.gold,
      ),
    );
  }
}

