import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_image.dart';
import 'package:flutter/material.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
    child: Row(
      children: [
        const BestSellerBookImage(),
        const SizedBox(width: 16),
        Flexible(child: const BestSellerBookDetails()),
      ],
    ),
  );
}