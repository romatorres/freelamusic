import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool showBack;
  final String? userAvatar;
  final VoidCallback? onAvatarTap;
  final double logoHeight;
  final double logoWidth;

  const AppAppBar({
    super.key,
    required this.title,
    this.actions,
    this.showBack = true,
    this.userAvatar,
    this.onAvatarTap,
    this.logoHeight = 38,
    this.logoWidth = 70,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,

      // CONTROLA A LARGURA DO LEADING
      leadingWidth: showBack ? 56 : logoWidth,
      leading: showBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Image.asset(
                'images/logo_app.png',
                height: logoHeight,
                fit: BoxFit.contain,
              ),
            ),

      // TÍTULO CENTRALIZADO
      title: Text(title),
      centerTitle: true,

      // AVATAR À DIREITA
      actions: [
        if (actions != null) ...actions!,

        if (userAvatar != null)
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: onAvatarTap,
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(userAvatar!),
              ),
            ),
          )
        else
          const SizedBox(width: 56),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
