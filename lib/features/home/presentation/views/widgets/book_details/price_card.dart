import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final num price;

  const PriceCard({super.key, required this.price});

  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
      ),
    ),
    child: Text(
      '$price €',
      style: BooklyStyles.text18.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}