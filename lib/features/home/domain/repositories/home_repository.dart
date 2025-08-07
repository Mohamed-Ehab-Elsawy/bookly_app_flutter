import 'package:bookly_app/core/utils/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:dart_either/dart_either.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookEntity>>> fetchAllBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}