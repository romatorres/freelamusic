import 'package:flutter/material.dart';
import '../../../feed/presentation/pages/feed_page.dart';
import '../../../feed/data/models/post_model.dart';
import '../../../schedule/presentation/pages/schedule_page.dart';
import '../../../search/presentation/page/search_page.dart';
import '../../../profile/presentation/page/profile_page.dart';

class HomePage extends StatefulWidget {
  final List<PostModel> initialPosts;
  const HomePage({super.key, required this.initialPosts});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<bool> _loadedPages = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          FeedPage(initialPosts: widget.initialPosts),
          _loadedPages[1] ? const SchedulePage() : const SizedBox.shrink(),

          _loadedPages[2] ? const SearchPage() : const SizedBox.shrink(),

          _loadedPages[3] ? const ProfilePage() : const SizedBox.shrink(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
            _loadedPages[index] = true;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            selectedIcon: Icon(Icons.calendar_month),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search_sharp),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
