import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/bookly_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;

  @override
  void initState() {
    super.initState();
    _initSlidingAnimation();
    _navigateToHomeView(context);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) => Center(
    child: SlideTransition(
      position: _slidingAnimation,
      child: Image.asset(BooklyAssets.logo),
    ),
  );

  _initSlidingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 1.5),
      end: Offset.zero,
    ).animate(_animationController);
    _animationController.forward();
  }

  _navigateToHomeView([context]) {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).replace(AppRoutes.home);
    });
  }
}