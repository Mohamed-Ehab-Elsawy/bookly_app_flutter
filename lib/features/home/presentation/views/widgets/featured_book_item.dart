import 'package:bookly_app/core/utils/bookly_assets.dart';
import 'package:bookly_app/core/widgets/ratio_image.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) => RatioImage(
    margin: EdgeInsets.only(right: 10,top: 16),
    aspectRatio: 2 / 3,
    imageUrl: BooklyAssets.networkImageTesting,
  );
}