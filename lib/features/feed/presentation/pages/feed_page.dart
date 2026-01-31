import 'package:flutter/material.dart';
import '../../../../core/widgets/app_app_bar.dart';
import '../widgets/post_card.dart';
import '../../data/models/post_model.dart';

class FeedPage extends StatelessWidget {
  final List<PostModel> initialPosts;
  const FeedPage({super.key, required this.initialPosts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: 'Feed', showBack: false, userAvatar: ''),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemCount: initialPosts.length,
        itemBuilder: (context, index) {
          return PostCard(post: initialPosts[index]);
        },
      ),
    );
  }
}
