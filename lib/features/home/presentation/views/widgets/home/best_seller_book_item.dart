import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home/best_seller_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home/best_seller_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerBookItem extends StatelessWidget {
  final BookEntity book;

  const BestSellerBookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
    child: GestureDetector(
      onTap: () {
        _navigateToBookDetails(context);
      },
      child: Row(
        children: [
          BestSellerBookImage(imageUrl: book.imageUrl),
          const SizedBox(width: 16),
          Flexible(child: BestSellerBookDetails(book: book)),
        ],
      ),
    ),
  );

  _navigateToBookDetails([context]) {
    GoRouter.of(context).push(AppRoutes.bookDetails);
  }
}