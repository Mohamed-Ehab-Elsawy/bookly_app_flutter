class BookModel {
  String title, author, imageUrl;
  double price, rating;
  int ratingCount;

  BookModel({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.ratingCount,
  });
}