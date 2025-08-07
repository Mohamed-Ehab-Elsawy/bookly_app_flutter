import 'package:bookly_app/core/utils/failure.dart';
import 'package:bookly_app/features/home/data/repositories/home_repository_impl.dart';
import 'package:bookly_app/features/home/data/sources/local/home_local_data_source_impl.dart';
import 'package:bookly_app/features/home/data/sources/remote/home_remote_data_source_impl.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_all_books.dart';
import 'package:dart_either/dart_either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit() : super(AllBooksInitial());

  final FetchAllBooksUseCase _usecase = FetchAllBooksUseCase(
    homeRepository: HomeRepositoryImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );

  fetchAllBooks() async {
    emit(AllBooksLoading());
    Either<Failure, List<BookEntity>> result = await _usecase.invoke();
    result.fold(
      ifRight: (List<BookEntity> booksList) {
        emit(AllBooksSuccess(books: booksList));
      },
      ifLeft: (Failure failure) {
        emit(AllBooksFailure(message: failure.message));
      },
    );
  }
}