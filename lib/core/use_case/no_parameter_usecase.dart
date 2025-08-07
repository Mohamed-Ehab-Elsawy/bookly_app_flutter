import 'package:bookly_app/core/utils/failure.dart';
import 'package:dart_either/dart_either.dart';

abstract class Usecase<Type> {
  Future<Either<Failure, Type>> invoke();
}