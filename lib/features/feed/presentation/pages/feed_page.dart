import 'package:flutter/material.dart';
import '../../../../core/widgets/app_app_bar.dart';
import '../widgets/post_card.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: 'Feed', showBack: false),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const PostCard();
        },
      ),
    );
  }
}
