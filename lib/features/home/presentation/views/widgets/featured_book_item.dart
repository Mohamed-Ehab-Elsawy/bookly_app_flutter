import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/widgets/ratio_image.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookItem extends StatelessWidget {
  final BookEntity book;

  const FeaturedBookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () {
      _navigateToBookDetails(context);
    },
    child: RatioImage(
      margin: EdgeInsets.only(right: 10, top: 16),
      aspectRatio: 2 / 3,
      imageUrl: book.imageUrl,
    ),
  );

  _navigateToBookDetails([context]) {
    GoRouter.of(context).push(AppRoutes.bookDetails);
  }
}