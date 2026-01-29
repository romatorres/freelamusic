import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF6E56CF);
  static const Color secondary = Color(0xFFC2CAE8);
  static const Color backgroundLight = Color(0xFFF4F9FE);
  static const Color backgroundDark = Color(0xFF1C1C33);
  static const Color textDark = Color(0xFF1C1C33);
  static const Color textLight = Color(0xFFF4F9FE);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primary,
    scaffoldBackgroundColor: backgroundLight,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
      surface: backgroundLight,
    ),

    // APPBAR
    appBarTheme: AppBarTheme(
      backgroundColor: secondary,
      foregroundColor: textDark,
      elevation: 0,
      scrolledUnderElevation: 4,
      surfaceTintColor: Colors.white.withValues(alpha: 0.1),
      centerTitle: true,
      shadowColor: Colors.black12,
    ),

    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    // Inputs e Botões para completar o tema
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: backgroundLight,
      selectedItemColor: primary,
      unselectedItemColor: Colors.grey,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primary,
    scaffoldBackgroundColor: backgroundDark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.dark,
      surface: backgroundDark,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF1E1B2E), // Roxo escuro profundo
      foregroundColor: textLight,
      elevation: 0,
      scrolledUnderElevation: 4,
      surfaceTintColor: primary.withValues(alpha: 0.1),
      centerTitle: true,
    ),

    // TEMA DO CARD PARA MODO ESCURO
    cardTheme: CardThemeData(
      color: const Color(
        0xFF2C2B28,
      ), // Um tom acima do fundo para dar profundidade
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF2C2B28),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: backgroundDark,
      selectedItemColor: primary,
      unselectedItemColor: Colors.grey,
    ),
  );
}
