import 'package:bookly_app/core/utils/bookly_assets.dart';
import 'package:bookly_app/core/widgets/ratio_image.dart';
import 'package:flutter/material.dart';

class BestSellerBookImage extends StatelessWidget {
  const BestSellerBookImage({super.key});

  @override
  Widget build(BuildContext context) => RatioImage(
    height: 120,
    aspectRatio: 11 / 16,
    imageUrl: BooklyAssets.networkImageTesting,
  );
}