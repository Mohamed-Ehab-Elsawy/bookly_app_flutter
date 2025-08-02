import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details/book_details_view_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details/book_details_view_top_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: BookDetailsViewTopBar(),
    body: SafeArea(child: BookDetailsViewBody(book: BookEntity.book)),
  );
}