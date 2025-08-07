import 'package:bookly_app/core/use_case/no_parameter_usecase.dart';
import 'package:bookly_app/core/utils/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repositories/home_repository.dart';
// ignore: implementation_imports
import 'package:dart_either/src/dart_either.dart';

class FetchNewestBooksUseCase extends Usecase<List<BookEntity>> {
  final HomeRepository homeRepository;
  FetchNewestBooksUseCase({required this.homeRepository});

  @override
  Future<Either<Failure, List<BookEntity>>> invoke() async =>
      await homeRepository.fetchNewestBooks();
}