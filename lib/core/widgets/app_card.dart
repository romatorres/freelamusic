import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin; // <-- ADICIONADO
  final VoidCallback? onTap;
  final Color? color;
  final double? borderRadius;

  const AppCard({
    super.key,
    required this.child,
    this.padding,
    this.margin, // <-- ADICIONADO
    this.onTap,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final cardTheme = Theme.of(context).cardTheme;
    // Criamos a borda aqui para reutilizar no Card e no InkWell
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 16),
    );

    return Card(
      color: color ?? cardTheme.color,
      elevation: cardTheme.elevation,
      margin: margin, // <-- AGORA O CARD ACEITA MARGEM EXTERNA
      shape: shape,
      // O ClipRRect impede que o conteúdo (como fotos) "vaze" pelas bordas arredondadas
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: padding ?? const EdgeInsets.all(16.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
