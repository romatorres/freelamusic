import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool showBack;
  final String? userAvatar;
  final VoidCallback? onAvatarTap;
  final double logoWidth;

  const AppAppBar({
    super.key,
    required this.title,
    this.actions,
    this.showBack = true,
    this.userAvatar,
    this.onAvatarTap,
    this.logoWidth = 76,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      automaticallyImplyLeading: false,
      leadingWidth: showBack ? 56 : logoWidth,
      leading: showBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Image.asset('images/logo_app.png', fit: BoxFit.contain),
            ),

      title: Text(
        title,
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      centerTitle: true,

      actions: [
        if (actions != null) ...actions!,

        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: GestureDetector(
            onTap: onAvatarTap,
            child: CircleAvatar(
              radius: 18,
              child: (userAvatar != null && userAvatar!.isNotEmpty)
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset(
                        userAvatar!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.person,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    )
                  : Icon(
                      Icons.person,
                      color: theme.colorScheme.primary,
                      size: 22,
                    ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
