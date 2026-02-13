import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme Colors
  static const Color _lightBackground = Color(0xFFF5F5FF);
  static const Color _lightForeground = Color(0xFF2A2A4A);
  static const Color _lightCard = Color(0xFFFFFFFF);
  static const Color _lightCardForeground = Color(0xFF2A2A4A);
  static const Color _lightPrimary = Color(0xFF6E56CF);
  static const Color _lightPrimaryForeground = Color(0xFFFFFFFF);
  static const Color _lightSecondary = Color(0xFFE4DFFF);
  static const Color _lightSecondaryForeground = Color(0xFF4A4080);
  static const Color _lightMuted = Color(0xFFF0F0FA);
  static const Color _lightMutedForeground = Color(0xFF6C6C8A);
  static const Color _lightAccent = Color(0xFFD8E6FF);
  static const Color _lightAccentForeground = Color(0xFF2A2A4A);
  static const Color _lightDestructive = Color(0xFFFF5470);
  static const Color _lightSuccess = Color(0xFF00D492);
  static const Color _lightBorder = Color(0xFFE0E0F0);
  static const Color _lightInput = Color(0xFFE0E0F0);
  static const Color _lightRing = Color(0xFF6E56CF);

  // Dark Theme Colors
  static const Color _darkBackground = Color(0xFF0F0F1A);
  static const Color _darkForeground = Color(0xFFE2E2F5);
  static const Color _darkCard = Color(0xFF1A1A2E);
  static const Color _darkCardForeground = Color(0xFFE2E2F5);
  static const Color _darkPrimary = Color(0xFFA48FFF);
  static const Color _darkPrimaryForeground = Color(0xFF0F0F1A);
  static const Color _darkSecondary = Color(0xFF2D2B55);
  static const Color _darkSecondaryForeground = Color(0xFFC4C2FF);
  static const Color _darkMuted = Color(0xFF222244);
  static const Color _darkMutedForeground = Color(0xFFA0A0C0);
  static const Color _darkAccent = Color(0xFF303060);
  static const Color _darkAccentForeground = Color(0xFFE2E2F5);
  static const Color _darkDestructive = Color(0xFFFF5470);
  static const Color _darkSuccess = Color(0xFF00D492);
  static const Color _darkBorder = Color(0xFF303052);
  static const Color _darkInput = Color(0xFF303052);
  static const Color _darkRing = Color(0xFFA48FFF);

  // Public color getters for Light theme
  static Color get lightBackground => _lightBackground;
  static Color get lightForeground => _lightForeground;
  static Color get lightCard => _lightCard;
  static Color get lightCardForeground => _lightCardForeground;
  static Color get lightPrimary => _lightPrimary;
  static Color get lightPrimaryForeground => _lightPrimaryForeground;
  static Color get lightSecondary => _lightSecondary;
  static Color get lightSecondaryForeground => _lightSecondaryForeground;
  static Color get lightMuted => _lightMuted;
  static Color get lightMutedForeground => _lightMutedForeground;
  static Color get lightAccent => _lightAccent;
  static Color get lightAccentForeground => _lightAccentForeground;
  static Color get lightDestructive => _lightDestructive;
  static Color get lightSuccess => _lightSuccess;
  static Color get lightBorder => _lightBorder;
  static Color get lightInput => _lightInput;
  static Color get lightRing => _lightRing;

  // Public color getters for Dark theme
  static Color get darkBackground => _darkBackground;
  static Color get darkForeground => _darkForeground;
  static Color get darkCard => _darkCard;
  static Color get darkCardForeground => _darkCardForeground;
  static Color get darkPrimary => _darkPrimary;
  static Color get darkPrimaryForeground => _darkPrimaryForeground;
  static Color get darkSecondary => _darkSecondary;
  static Color get darkSecondaryForeground => _darkSecondaryForeground;
  static Color get darkMuted => _darkMuted;
  static Color get darkMutedForeground => _darkMutedForeground;
  static Color get darkAccent => _darkAccent;
  static Color get darkAccentForeground => _darkAccentForeground;
  static Color get darkDestructive => _darkDestructive;
  static Color get darkSuccess => _darkSuccess;
  static Color get darkBorder => _darkBorder;
  static Color get darkInput => _darkInput;
  static Color get darkRing => _darkRing;

  // Border Radius
  static const double radiusSm = 6.0; // radius - 4px
  static const double radiusMd = 6.0; // radius - 2px
  static const double radiusLg = 8.0; // radius
  static const double radiusXl = 12.0; // radius + 4px

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: _lightBackground,

    // Color Scheme
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: _lightPrimary,
      onPrimary: _lightPrimaryForeground,
      secondary: _lightSecondary,
      onSecondary: _lightSecondaryForeground,
      error: _lightDestructive,
      onError: Colors.white,
      surface: _lightCard,
      onSurface: _lightCardForeground,
      surfaceContainerHighest: _lightMuted,
      outline: _lightBorder,
    ),

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: _lightCard,
      foregroundColor: _lightCardForeground,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: _lightCardForeground,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: _lightCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radiusLg),
        side: const BorderSide(color: _lightBorder, width: 1),
      ),
      margin: const EdgeInsets.all(8),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _lightInput,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMd),
        borderSide: const BorderSide(color: _lightBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMd),
        borderSide: const BorderSide(color: _lightBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMd),
        borderSide: const BorderSide(color: _lightRing, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMd),
        borderSide: const BorderSide(color: _lightDestructive),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _lightPrimary,
        foregroundColor: _lightPrimaryForeground,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMd),
        ),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Inter',
        ),
      ),
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _lightPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusSm),
        ),
      ),
    ),

    // Outlined Button Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _lightForeground,
        side: const BorderSide(color: _lightBorder),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMd),
        ),
      ),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(color: _lightForeground, size: 24),

    // Text Theme
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: _lightMutedForeground,
        fontFamily: 'Inter',
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: _lightForeground,
        fontFamily: 'Inter',
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: _lightMutedForeground,
        fontFamily: 'Inter',
      ),
    ),

    // Divider Theme
    dividerTheme: const DividerThemeData(
      color: _lightBorder,
      thickness: 1,
      space: 1,
    ),

    // Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: _lightSecondary,
      selectedColor: _lightPrimary,
      labelStyle: const TextStyle(color: _lightSecondaryForeground),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radiusSm),
      ),
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: _darkBackground,

    // Color Scheme
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: _darkPrimary,
      onPrimary: _darkPrimaryForeground,
      secondary: _darkSecondary,
      onSecondary: _darkSecondaryForeground,
      error: _darkDestructive,
      onError: Colors.white,
      surface: _darkCard,
      onSurface: _darkCardForeground,
      surfaceContainerHighest: _darkMuted,
      outline: _darkBorder,
    ),

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: _darkCard,
      foregroundColor: _darkCardForeground,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: _darkCardForeground,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: _darkCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radiusLg),
        side: const BorderSide(color: _darkBorder, width: 1),
      ),
      margin: const EdgeInsets.all(8),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _darkInput,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMd),
        borderSide: const BorderSide(color: _darkBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMd),
        borderSide: const BorderSide(color: _darkBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMd),
        borderSide: const BorderSide(color: _darkRing, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMd),
        borderSide: const BorderSide(color: _darkDestructive),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _darkPrimary,
        foregroundColor: _darkPrimaryForeground,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMd),
        ),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Inter',
        ),
      ),
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _darkPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusSm),
        ),
      ),
    ),

    // Outlined Button Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _darkForeground,
        side: const BorderSide(color: _darkBorder),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMd),
        ),
      ),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(color: _darkForeground, size: 24),

    // Text Theme
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: _darkMutedForeground,
        fontFamily: 'Inter',
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: _darkForeground,
        fontFamily: 'Inter',
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: _darkMutedForeground,
        fontFamily: 'Inter',
      ),
    ),

    // Divider Theme
    dividerTheme: const DividerThemeData(
      color: _darkBorder,
      thickness: 1,
      space: 1,
    ),

    // Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: _darkSecondary,
      selectedColor: _darkPrimary,
      labelStyle: const TextStyle(color: _darkSecondaryForeground),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radiusSm),
      ),
    ),
  );

  // Custom Colors Extension (para cores adicionais como success, muted, etc.)
  static AppColors get lightColors => const AppColors(
    success: _lightSuccess,
    muted: _lightMuted,
    mutedForeground: _lightMutedForeground,
    accent: _lightAccent,
    accentForeground: _lightAccentForeground,
  );

  static AppColors get darkColors => const AppColors(
    success: _darkSuccess,
    muted: _darkMuted,
    mutedForeground: _darkMutedForeground,
    accent: _darkAccent,
    accentForeground: _darkAccentForeground,
  );

  // Helper method to get colors based on brightness
  static Color primary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightPrimary
        : _darkPrimary;
  }

  static Color primaryForeground(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightPrimaryForeground
        : _darkPrimaryForeground;
  }

  static Color secondary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightSecondary
        : _darkSecondary;
  }

  static Color secondaryForeground(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightSecondaryForeground
        : _darkSecondaryForeground;
  }

  static Color background(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightBackground
        : _darkBackground;
  }

  static Color foreground(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightForeground
        : _darkForeground;
  }

  static Color card(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightCard
        : _darkCard;
  }

  static Color cardForeground(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightCardForeground
        : _darkCardForeground;
  }

  static Color muted(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightMuted
        : _darkMuted;
  }

  static Color mutedForeground(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightMutedForeground
        : _darkMutedForeground;
  }

  static Color accent(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightAccent
        : _darkAccent;
  }

  static Color accentForeground(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightAccentForeground
        : _darkAccentForeground;
  }

  static Color destructive(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightDestructive
        : _darkDestructive;
  }

  static Color success(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightSuccess
        : _darkSuccess;
  }

  static Color border(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightBorder
        : _darkBorder;
  }

  static Color input(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightInput
        : _darkInput;
  }

  static Color ring(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? _lightRing
        : _darkRing;
  }
}

// Classe para cores customizadas adicionais
class AppColors {
  final Color success;
  final Color muted;
  final Color mutedForeground;
  final Color accent;
  final Color accentForeground;

  const AppColors({
    required this.success,
    required this.muted,
    required this.mutedForeground,
    required this.accent,
    required this.accentForeground,
  });
}

// Extension para facilitar o acesso às cores customizadas
extension ThemeExtension on BuildContext {
  AppColors get colors {
    final brightness = Theme.of(this).brightness;
    return brightness == Brightness.light
        ? AppTheme.lightColors
        : AppTheme.darkColors;
  }
}
