import 'package:flutter/material.dart';
import '../../../../core/theme/theme_controller.dart';
import '../../../../core/widgets/app_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: 'Perfil', showBack: false),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Configurações',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ValueListenableBuilder<ThemeMode>(
              valueListenable: ThemeController.themeMode,
              builder: (context, themeMode, _) {
                final isDark = themeMode == ThemeMode.dark;

                return SwitchListTile(
                  title: const Text('Modo escuro'),
                  value: isDark,
                  onChanged: (value) {
                    ThemeController.toggleTheme(value);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
