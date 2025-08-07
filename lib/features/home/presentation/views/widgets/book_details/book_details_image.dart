import 'package:flutter/material.dart';

import '../../../../../../core/widgets/ratio_image.dart';

class BookDetailsImage extends StatelessWidget {
  final String? imageUrl;

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