import 'package:bookly_app/core/utils/failure.dart';
import 'package:bookly_app/core/utils/logging.dart';
import 'package:bookly_app/features/home/data/sources/local/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/sources/local/home_local_data_source_impl.dart';
import 'package:bookly_app/features/home/data/sources/remote/home_remote_data_source.dart';
import 'package:bookly_app/features/home/data/sources/remote/home_remote_data_source_impl.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repositories/home_repository.dart';
import 'package:dart_either/dart_either.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRemoteDataSource remoteDS = HomeRemoteDataSourceImpl();
  HomeLocalDataSource localDS = HomeLocalDataSourceImpl();

  @override
  Future<Either<Failure, List<BookEntity>>> fetchAllBooks() async {
    try {
      List<BookEntity>? books = localDS.fetchAllBooks();
      if (books.isNotEmpty) {
        return Right(books);
      } else {
        return Right(localDS.fetchAllBooks());
      }
    } on DioException catch (e) {
      Logging.error("Error in fetchAllBooks: ${e.message}");
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      Logging.error("Error in fetchAllBooks: ${e.toString()}");
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchTrendingBooks() async {
    try {
      List<BookEntity>? books = localDS.fetchNewestBooks();
      if (books.isNotEmpty) {
        return Right(books);
      } else {
        return Right(localDS.fetchNewestBooks());
      }
    } on DioException catch (e) {
      Logging.error("Error in fetchTrendingBooks: ${e.message}");
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      Logging.error("Error in fetchTrendingBooks: ${e.toString()}");
      return Left(ServerFailure(e.toString()));
    }
  }
}