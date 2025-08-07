part of 'all_books_cubit.dart';

@immutable
sealed class AllBooksState {}

final class AllBooksInitial extends AllBooksState {}

final class AllBooksLoading extends AllBooksState {}

final class AllBooksSuccess extends AllBooksState {
  final List<BookEntity> books;

  AllBooksSuccess({required this.books});
}

final class AllBooksFailure extends AllBooksState {
  final String? message;

  AllBooksFailure({required this.message});
}