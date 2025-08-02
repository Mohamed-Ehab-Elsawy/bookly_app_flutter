import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String home = '/home_view';
  static const String bookDetails = '/book_details_view';
  static const String search = '/search_view';

  static final GoRouter route = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRoutes.bookDetails,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: AppRoutes.search,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}