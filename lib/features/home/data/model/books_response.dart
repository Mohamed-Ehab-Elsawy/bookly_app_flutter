import 'book_model.dart';

class BooksResponse {
  BooksResponse({this.kind, this.totalItems, this.books});

  BooksResponse.fromJson(dynamic json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      books = [];
      json['items'].forEach((v) {
        books?.add(BookModel.fromJson(v));
      });
    }
  }

  String? kind;
  num? totalItems;
  List<BookModel>? books;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['totalItems'] = totalItems;
    if (books != null) {
      map['items'] = books?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}