import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import '../home/presentation/pages/home_page.dart';
import '../feed/data/repositories/post_repository.dart';
import '../feed/data/models/post_model.dart';

class ProfessionalSplashScreen extends StatefulWidget {
  const ProfessionalSplashScreen({super.key});

  @override
  State<ProfessionalSplashScreen> createState() =>
      _ProfessionalSplashScreenState();
}

class _ProfessionalSplashScreenState extends State<ProfessionalSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _slideAnimation;
  final _postRepository = PostRepository();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
      ),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 2.0), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.fastLinearToSlowEaseIn,
          ),
        );

    _initialize();
  }

  void _initialize() async {
    // Inicia a busca dos dados em paralelo com a animação
    final futurePosts = _postRepository.getPosts();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
      _controller.forward();
    });

    _controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        // Aguarda os dados estarem prontos antes de mudar de tela
        final posts = await futurePosts;
        if (!mounted) return;

        Navigator.of(context).pushReplacement(_createRoute(posts));
      }
    });
  }

  Route _createRoute(List<PostModel> posts) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          HomePage(initialPosts: posts),
      transitionDuration: const Duration(milliseconds: 1400),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var tween = Tween(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOutQuart));

        return SlideTransition(
          position: animation.drive(tween),
          child: FadeTransition(opacity: animation, child: child),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F9FE),
      body: Center(
        child: FadeTransition(
          opacity: _opacityAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: Image.asset('images/logo.png', width: 220),
          ),
        ),
      ),
    );
  }
}
