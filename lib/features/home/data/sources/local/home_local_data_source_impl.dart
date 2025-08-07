import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'home_local_data_source.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchAllBooks() =>
      Hive.box<BookEntity>(kBooksBox).values.toList();

  @override
  List<BookEntity> fetchNewestBooks() =>
      Hive.box<BookEntity>(kNewestBooksBox).values.toList();
}