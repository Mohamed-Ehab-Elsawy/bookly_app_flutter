import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home/best_seller_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) => BestSellerBookItem(book: BookEntity.book),
    itemCount: 5,
  );
}