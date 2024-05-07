
import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';

abstract class FeatureBookState {}

class InitialFeatureBookState extends FeatureBookState {}

class LoadingFeatureBookState extends FeatureBookState {}

class SuccessFeatureBookState extends FeatureBookState {
  final List<BookModels> books;
  SuccessFeatureBookState(this.books);
}

class FailuarFeatureBookState extends FeatureBookState {
  final String errMessage;
  FailuarFeatureBookState(this.errMessage);
}
