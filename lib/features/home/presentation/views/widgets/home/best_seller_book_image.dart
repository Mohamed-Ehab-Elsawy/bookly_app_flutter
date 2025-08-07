import 'package:bookly_app/core/widgets/ratio_image.dart';
import 'package:flutter/material.dart';

class BestSellerBookImage extends StatelessWidget {
  final String? imageUrl;

  const BestSellerBookImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) => RatioImage(
    height: 120,
    aspectRatio: 11 / 16,
    imageUrl: imageUrl,
  );
}