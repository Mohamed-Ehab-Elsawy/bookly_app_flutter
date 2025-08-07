import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModel extends BookEntity {
  BookModel({
    this.kind,
    this.id,
    this.eTag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
         title: volumeInfo?.title,
         author: volumeInfo?.authors?.first,
         imageUrl: volumeInfo?.imageLinks?.thumbnail,
         price: saleInfo?.listPrice?.amount,
         rating:volumeInfo?.averageRating,
         ratingCount: volumeInfo?.ratingsCount,
       );

  BookModel.fromJson(dynamic json)
      : kind = json['kind'],
        id = json['id'],
        eTag = json['etag'],
        selfLink = json['selfLink'],
        volumeInfo = json['volumeInfo'] != null
            ? VolumeInfo.fromJson(json['volumeInfo'])
            : null,
        saleInfo = json['saleInfo'] != null
            ? SaleInfo.fromJson(json['saleInfo'])
            : null,
        accessInfo = json['accessInfo'] != null
            ? AccessInfo.fromJson(json['accessInfo'])
            : null,
        searchInfo = json['searchInfo'] != null
            ? SearchInfo.fromJson(json['searchInfo'])
            : null,
        super(
        title: json['volumeInfo']?['title'],
        author: json['volumeInfo']?['authors'] != null
            ? (json['volumeInfo']['authors'] as List).isNotEmpty
            ? json['volumeInfo']['authors'][0]
            : null
            : null,
        imageUrl: json['volumeInfo']?['imageLinks']?['thumbnail'],
        price: json['saleInfo']?['listPrice']?['amount'],
        rating: json['volumeInfo']?['averageRating'],
        ratingCount: json['volumeInfo']?['ratingsCount'],
      );


  String? kind;
  String? id;
  String? eTag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = eTag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }
}