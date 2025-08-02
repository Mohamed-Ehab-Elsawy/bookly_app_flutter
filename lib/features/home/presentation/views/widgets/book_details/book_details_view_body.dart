import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:bookly_app/core/widgets/ratio_image.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details/free_preview_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details/price_card.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookEntity book;

  const BookDetailsViewBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    children: [
      BookDetailsImage(imageUrl: book.imageUrl),
      const SizedBox(height: 44),
      BookTitles(bookTitle: book.title, bookAuthor: book.author),
      const SizedBox(height: 16),
      BookRatingDetails(rating: book.rating, ratingCount: book.ratingCount),
      const SizedBox(height: 36),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [PriceCard(price: book.price), const FreePreviewCard()],
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

class BookDetailsImage extends StatelessWidget {
  final String imageUrl;

  const BookDetailsImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) => Center(
    child: RatioImage(
      height: MediaQuery.of(context).size.height * 0.3,
      aspectRatio: 0.7,
      imageUrl: imageUrl,
    ),
  );
}