import 'package:bookly_app/core/use_case/no_parameter_usecase.dart';
import 'package:bookly_app/core/utils/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repositories/home_repository.dart';
import 'package:dart_either/dart_either.dart';

class FetchAllBooksUseCase extends Usecase<List<BookEntity>> {
  final HomeRepository homeRepository;

  FetchAllBooksUseCase({required this.homeRepository});

  @override
  Future<Either<Failure, List<BookEntity>>> invoke() async =>
      await homeRepository.fetchAllBooks();
}