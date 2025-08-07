import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details/free_preview_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details/price_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

import 'book_details_image.dart';
import 'book_titles.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookEntity book;

  const BookDetailsViewBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    children: [
      BookDetailsImage(imageUrl: book.imageUrl),
      const SizedBox(height: 44),
      BookTitles(
        bookTitle: book.title ?? "Book Title",
        bookAuthor: book.author ?? "No Author",
      ),
      const SizedBox(height: 16),
      BookRatingDetails(
        rating: book.rating ?? 0,
        ratingCount: book.ratingCount ?? 0,
      ),
      const SizedBox(height: 36),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [PriceCard(price: book.price ?? 0), const FreePreviewCard()],
      ),
      const SizedBox(height: 50),
      Text(
        'You can also like',
        style: BooklyStyles.text14.copyWith(fontWeight: FontWeight.w600),
      ),
      FeaturedBooksList(
        books: BookEntity.books,
        listHeight: MediaQuery.of(context).size.height * 0.17,
      ),
    ],
  );
}