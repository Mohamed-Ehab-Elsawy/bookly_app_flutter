import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class BestSellerBookDetails extends StatelessWidget {
  const BestSellerBookDetails({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        'Harry Potter and the Goblet of Fire',
        style: BooklyStyles.text20.copyWith(fontFamily: kGTSectraFine),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      Text(
        'Rudyard Kipling',
        style: BooklyStyles.text14.copyWith(color: Colors.grey),
      ),
      Flexible(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('19.99 \$', style: BooklyStyles.text20),
            Spacer(),
            Icon(Icons.star_rounded, color: kYellowColor),
            const SizedBox(width: 5),
            Text('4.8', style: BooklyStyles.text16),
            const SizedBox(width: 5),
            Text(
              '(2390)',
              style: BooklyStyles.text14.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ),
    ],
  );
}