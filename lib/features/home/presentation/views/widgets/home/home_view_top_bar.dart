import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/bookly_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewTopBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewTopBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    scrolledUnderElevation: 0,
    title: Image.asset(BooklyAssets.logo, height: 16, width: 75),
    actions: [
      IconButton(
        onPressed: () {
          GoRouter.of(context).push(AppRoutes.search);
        },
        icon: const Icon(Icons.search, size: 25, color: Colors.white),
      ),
    ],
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}