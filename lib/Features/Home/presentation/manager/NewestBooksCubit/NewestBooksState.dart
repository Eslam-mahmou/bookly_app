

import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';

abstract class NewestBooksState {}

class InitialNewestBooksState extends NewestBooksState {}

class LoadingNewestBooksState extends NewestBooksState {}

class SuccessNewestBooksState extends NewestBooksState {
  final List<BookModels> books;
  SuccessNewestBooksState(this.books);
}

class FailuarNewestBooksState extends NewestBooksState {
  final String errMessage;
  FailuarNewestBooksState(this.errMessage);
}
