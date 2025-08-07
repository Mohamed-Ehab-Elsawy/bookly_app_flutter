import 'package:hive/hive.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? author;
  @HiveField(2)
  String? imageUrl;
  @HiveField(3)
  num? price;
  @HiveField(4)
  num? rating;
  @HiveField(5)
  num? ratingCount;

  BookEntity({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.ratingCount,
  });

  static var book = BookEntity(
    title: "Large Language Models - LLM and API's",
    author: 'Anand Vemula',
    imageUrl: '',
    price: 40,
    rating: 3.9,
    ratingCount: 1500,
  );
  static var books = [book, book, book, book];
}