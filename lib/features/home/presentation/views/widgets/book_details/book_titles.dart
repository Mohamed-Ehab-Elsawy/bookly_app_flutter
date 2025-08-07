import 'package:flutter/material.dart';

import '../../../../../../core/utils/bookly_styles.dart';
class BookTitles extends StatelessWidget {
  final String bookTitle, bookAuthor;

  const BookTitles({
    super.key,
    required this.bookTitle,
    required this.bookAuthor,
  });

  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          bookTitle,
          style: BooklyStyles.text30,
          textAlign: TextAlign.center,
        ),
        Text(
          bookAuthor,
          style: BooklyStyles.text18.copyWith(color: Colors.grey),
        ),
      ],
    ),
  );
}