import 'package:bookly_app/features/home/presentation/views/widgets/home/home_view_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home/home_view_top_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
    appBar: HomeViewTopBar(),
    body: SafeArea(child: HomeViewBody()),
  );
}