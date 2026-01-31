import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFFD9E02);
  static const Color secondary = Color(0xFFFEE1B1);
  static const Color backgroundLight = Color(0xFFF9F5EF);
  static const Color backgroundDark = Color(0xFF1C1C33);
  static const Color bakgroundCard = Color(0xFFFFF5E6);
  static const Color textDark = Color(0xFF1C1C33);
  static const Color textLight = Color(0xFFFFF5E6);

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
      backgroundColor: backgroundLight,
      foregroundColor: textDark,
      elevation: 2,
      scrolledUnderElevation: 4,
      surfaceTintColor: Colors.white.withValues(alpha: 0.1),
      centerTitle: true,
      shadowColor: Colors.black12,
    ),

    cardTheme: CardThemeData(
      color: bakgroundCard,
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
        foregroundColor: backgroundLight,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),

    navigationBarTheme: NavigationBarThemeData(
      height: 48,
      backgroundColor: backgroundLight,
      indicatorColor: primary.withValues(alpha: 0.2),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: primary, size: 22);
        }
        return IconThemeData(color: primary.withValues(alpha: 0.6), size: 20);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: primary,
          );
        }
        return const TextStyle(fontSize: 10, color: Colors.black54);
      }),
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
