import 'package:bookly_app/core/use_case/no_parmeter_usecase.dart';
import 'package:bookly_app/core/utils/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repositories/home_repository.dart';
import 'package:dart_either/dart_either.dart';

class FetchAllBooks extends Usecase<List<BookEntity>> {
  final HomeRepository repo;
  FetchAllBooks({required this.repo});

  @override
  Future<Either<Failure, List<BookEntity>>> invoke() async =>
      await repo.fetchAllBooks();
}