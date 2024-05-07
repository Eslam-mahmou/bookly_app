
import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';

abstract class SimilarBooksState {

}

class InitialSimilartBooksState extends SimilarBooksState {}

class LoadingSimilarBooksState extends  SimilarBooksState{}

class SuccessSimilarBooksState extends SimilarBooksState {
  final List<BookModels> books;
  SuccessSimilarBooksState(this.books);
}

class FailuarSimilarBooksState extends SimilarBooksState {
  final String errMessage;
  FailuarSimilarBooksState(this.errMessage);
}
