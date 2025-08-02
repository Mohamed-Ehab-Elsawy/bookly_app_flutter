import 'package:bookly_app/core/utils/bookly_styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: const Text('Search', style: BooklyStyles.text24),
      centerTitle: true,
    ),
    body: SafeArea(child: const SearchViewBody()),
  );
}