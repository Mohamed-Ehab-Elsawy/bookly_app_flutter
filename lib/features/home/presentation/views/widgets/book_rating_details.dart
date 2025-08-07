import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class BookRatingDetails extends StatelessWidget {
  final num rating, ratingCount;

  const BookRatingDetails({
    super.key,
    required this.rating,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(Icons.star_rounded, color: kYellowColor),
      const SizedBox(width: 5),
      Text(rating.toString(), style: BooklyStyles.text16),
      const SizedBox(width: 5),
      Text(
        '($ratingCount)',
        style: BooklyStyles.text14.copyWith(color: Colors.grey),
      ),
    ],
  );
}