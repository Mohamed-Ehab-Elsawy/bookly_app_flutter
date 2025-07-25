import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_books_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: FeaturedBooksList()),
        SliverToBoxAdapter(child: SizedBox(height: 30)),
        SliverToBoxAdapter(
          child: Text('Best Seller', style: BooklyStyles.text18),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverFillRemaining(child: BestSellerBooksList()),
      ],
    ),
  );
}