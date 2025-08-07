import 'package:dio/dio.dart';

class ApiServices {
  static final Dio _dio = Dio();
  static const _baseUrl = 'https://www.googleapis.com/books/v1/';

  static Future<Map<String, dynamic>> get({required String endpoint}) async =>
      _dio.get("$_baseUrl$endpoint").then((response) => response.data);
}