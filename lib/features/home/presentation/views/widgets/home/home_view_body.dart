import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:bookly_app/features/home/data/model/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home/best_seller_books_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: FeaturedBooksList(
            books: BookEntity.books,
            listHeight: MediaQuery.of(context).size.height * 0.3,
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 30)),
        const SliverToBoxAdapter(
          child: Text('Best Seller', style: BooklyStyles.text18),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        const SliverFillRemaining(child: BestSellerBooksList()),
      ],
    ),
  );
}