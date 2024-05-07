import 'package:bookly_app_test/Core/Error/Failuar.dart';
import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class DetalisRepo{
 Future< Either<Failuar,List<BookModels>>> fetchSimilarBooks({required String category});
}