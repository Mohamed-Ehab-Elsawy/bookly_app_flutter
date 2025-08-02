import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:flutter/material.dart';

class FreePreviewCard extends StatelessWidget {
  const FreePreviewCard({super.key});

  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
      backgroundColor: Color(0xFFEF8262),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
    ),
    child: Text(
      'Free Preview',
      style: BooklyStyles.text18.copyWith(fontWeight: FontWeight.bold),
    ),
  );
}