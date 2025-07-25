import 'package:flutter/material.dart';

class RatioImage extends StatelessWidget {
  final double? height;
  final double aspectRatio;
  final String imageUrl;
  final EdgeInsets? margin;

  const RatioImage({
    super.key,
    this.height,
    this.margin,
    required this.aspectRatio,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
    height: height,
    child: AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    ),
  );
}