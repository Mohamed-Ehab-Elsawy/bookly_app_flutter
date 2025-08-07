import 'package:dio/dio.dart';

abstract class Failure {
  final String? message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response!.data,
          e.response!.statusCode!,
        );
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate');
      case DioExceptionType.cancel:
        return ServerFailure('Request cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(
          'No Connection. Please check your internet connection',
        );
      case DioExceptionType.unknown:
        return ServerFailure('Unknown error, please try again later');
    }
  }

  factory ServerFailure.fromResponse(dynamic response, int statusCode) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try again later');
    } else if (statusCode == 404) {
      return ServerFailure('Request not found, please try again later');
    } else {
      return ServerFailure('Unknown error, please try again later');
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}