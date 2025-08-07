import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/data/model/books_response.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/adapters.dart';

import 'home_remote_data_source.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>?> fetchAllBooks() async {
    Map<String, dynamic> responseJson = await ApiServices.get(
      endpoint: 'volumes?Filtering=free-ebooks&q=programming',
    );
    List<BookEntity>? books = BooksResponse.fromJson(responseJson).books;
    _saveBooks(books, kBooksBox);
    return books;
  }

  @override
  Future<List<BookEntity>?> fetchNewestBooks() async {
    Map<String, dynamic> responseJson = await ApiServices.get(
      endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming',
    );
    List<BookEntity>? books = BooksResponse.fromJson(responseJson).books;
    _saveBooks(books, kNewestBooksBox);
    return books;
  }

  _saveBooks(List<BookEntity>? books, String boxName) {
    if (books != null) {
      var box = Hive.box(boxName);
      box.clear();
      box.addAll(books);
    }
  }
}