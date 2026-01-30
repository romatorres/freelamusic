import 'package:flutter/material.dart';
import '../../../../core/widgets/app_app_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(
        title: 'Buscar',
        showBack: false,
        userAvatar: 'images/avatar.jpg',
      ),
      body: Center(child: Text('Buscar')),
    );
  }
}
