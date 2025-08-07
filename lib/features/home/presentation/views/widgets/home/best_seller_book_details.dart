import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_details.dart';
import 'package:flutter/material.dart';

class BestSellerBookDetails extends StatelessWidget {
  final BookEntity book;

  const BestSellerBookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        book.title ?? "Title",
        style: BooklyStyles.text20.copyWith(fontFamily: kGTSectraFine),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      Text(
        book.author ?? "No Author",
        style: BooklyStyles.text14.copyWith(color: Colors.grey),
      ),
      Flexible(
        child: Row(
          children: [
            Text('${book.price} €', style: BooklyStyles.text20),
            const Spacer(),
            BookRatingDetails(
              rating: book.rating ?? 0,
              ratingCount: book.ratingCount ?? 0,
            ),
          ],
        ),
      ),
    ],
  );
}