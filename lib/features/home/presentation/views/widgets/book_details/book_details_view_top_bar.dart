import 'package:flutter/material.dart';

class BookDetailsViewTopBar extends StatelessWidget
    implements PreferredSizeWidget {
  const BookDetailsViewTopBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    scrolledUnderElevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.close_rounded, size: 25, color: Colors.white),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart_outlined,
          size: 25,
          color: Colors.white,
        ),
      ),
    ],
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}