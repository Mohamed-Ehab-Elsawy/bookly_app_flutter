import 'package:bookly_app/core/use_case/no_parmeter_usecase.dart';
import 'package:bookly_app/core/utils/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repositories/home_repository.dart';
// ignore: implementation_imports
import 'package:dart_either/src/dart_either.dart';

class FetchTrendingBooks extends Usecase<List<BookEntity>> {
  final HomeRepository repo;
  FetchTrendingBooks({required this.repo});

  @override
  Future<Either<Failure, List<BookEntity>>> invoke() async =>
      await repo.fetchTrendingBooks();
}