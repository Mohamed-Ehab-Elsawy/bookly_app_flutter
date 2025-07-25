import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/bookly_assets.dart';
import 'package:flutter/material.dart';

class HomeViewTopBar extends StatelessWidget implements PreferredSizeWidget {

  const HomeViewTopBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(

    backgroundColor: kPrimaryColor,
    title: Image.asset(BooklyAssets.logo, height: 16, width: 75),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search, size: 25, color: Colors.white),
      ),
    ],
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}