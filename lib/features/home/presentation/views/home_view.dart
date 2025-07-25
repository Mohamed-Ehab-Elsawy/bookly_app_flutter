import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_top_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) =>
      const Scaffold(appBar: HomeViewTopBar(), body: HomeViewBody());
}