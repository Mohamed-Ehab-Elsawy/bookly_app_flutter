import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource{
  List<BookEntity> fetchAllBooks();
  List<BookEntity> fetchNewestBooks();
}