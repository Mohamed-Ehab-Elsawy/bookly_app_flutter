import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksList extends StatelessWidget {
  final List<BookEntity> books;
  final double listHeight;

  const FeaturedBooksList({
    super.key,
    required this.listHeight,
    required this.books,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
    height: listHeight,
    child: ListView.builder(
      itemCount: books.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => FeaturedBookItem(book: books[index]),
    ),
  );
}