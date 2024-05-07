import 'package:bookly_app_test/Core/Error/Failuar.dart';
import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuar, List<BookModels>>> fetchFeatureBooks();
  Future<Either<Failuar, List<BookModels>>> fetchNewestBooks();
}
