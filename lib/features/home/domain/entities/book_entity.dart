class BookEntity {
  String title, author, imageUrl;
  double price, rating;
  int ratingCount;

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