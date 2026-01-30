import 'package:flutter/material.dart';
import '../../../../core/widgets/app_app_bar.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const AppAppBar(
        title: 'Agenda',
        showBack: false,
        userAvatar: 'images/avatar.jpg',
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Agenda',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Novo"),
          ),
        ],
      ),
    );
  }
}
