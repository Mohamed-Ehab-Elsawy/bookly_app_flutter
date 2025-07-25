import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) => BestSellerBookItem(),
    itemCount: 5,
  );
}