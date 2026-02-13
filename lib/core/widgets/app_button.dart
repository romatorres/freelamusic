import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

enum AppButtonStyle { primary, secondary, outline, text }

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final IconData? icon;
  final Color? backgroundColor;
  final AppButtonStyle buttonStyle;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
    this.backgroundColor,
    this.buttonStyle = AppButtonStyle.primary,
  });

  @override
  Widget build(BuildContext context) {
    Theme.of(context);

    Color getBackgroundColor() {
      if (backgroundColor != null) return backgroundColor!;

      switch (buttonStyle) {
        case AppButtonStyle.primary:
          return AppTheme.primary(context); // ✅ CORRIGIDO
        case AppButtonStyle.secondary:
          return AppTheme.secondary(context); // ✅ CORRIGIDO
        case AppButtonStyle.outline:
          return Colors.transparent;
        case AppButtonStyle.text:
          return Colors.transparent;
      }
    }

    Color getForegroundColor() {
      switch (buttonStyle) {
        case AppButtonStyle.primary:
          return AppTheme.primaryForeground(context); // ✅ CORRIGIDO
        case AppButtonStyle.secondary:
          return AppTheme.secondaryForeground(context); // ✅ CORRIGIDO
        case AppButtonStyle.outline:
          return AppTheme.primary(context); // ✅ CORRIGIDO
        case AppButtonStyle.text:
          return AppTheme.primary(context); // ✅ CORRIGIDO
      }
    }

    BorderSide? getBorder() {
      if (buttonStyle == AppButtonStyle.outline) {
        return BorderSide(
          color: AppTheme.primary(context), // ✅ CORRIGIDO
          width: 2,
        );
      }
      return null;
    }

    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ButtonStyle(
        // Background com estados (disabled + normal)
        backgroundColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return AppTheme.primary(
              context,
            ).withValues(alpha: 0.1); // ✅ CORRIGIDO
          }
          return getBackgroundColor();
        }),

        // Cor do texto/ícone
        foregroundColor: WidgetStateProperty.all(getForegroundColor()),

        // Overlay no hover/press
        overlayColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered)) {
            return Colors.white.withValues(alpha: 0.1);
          }
          if (states.contains(WidgetState.pressed)) {
            return Colors.white.withValues(alpha: 0.2);
          }
          return null;
        }),

        // Elevação com estados
        elevation: WidgetStateProperty.resolveWith<double>((
          Set<WidgetState> states,
        ) {
          if (buttonStyle == AppButtonStyle.outline ||
              buttonStyle == AppButtonStyle.text) {
            return 0;
          }
          if (states.contains(WidgetState.hovered)) {
            return 4;
          }
          if (states.contains(WidgetState.pressed)) {
            return 1;
          }
          return 2;
        }),

        // Cor da sombra
        shadowColor: WidgetStateProperty.all(
          AppTheme.primary(context).withValues(alpha: 0.4), // ✅ CORRIGIDO
        ),

        // Borda (apenas para outline)
        side: WidgetStateProperty.all(getBorder()),

        // Padding
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),

        // Border radius
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppTheme.radiusMd),
          ),
        ),
      ),
      child: isLoading
          ? SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: getForegroundColor(),
                strokeWidth: 2,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min, // ✅ MELHORADO
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 20),
                  const SizedBox(width: 8),
                ],
                Text(
                  label,
                  style: TextStyle(
                    color: getForegroundColor(),
                    fontWeight: FontWeight.w500, // ✅ MELHORADO
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
