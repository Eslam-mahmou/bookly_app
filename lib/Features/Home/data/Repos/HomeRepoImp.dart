import 'package:bookly_app_test/Core/Api/ApiService.dart';
import 'package:bookly_app_test/Core/Error/Failuar.dart';
import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:bookly_app_test/Features/Home/data/Repos/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;
  HomeRepoImp(this.apiService);
  @override
  Future<Either<Failuar, List<BookModels>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModels> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModels.fromJson(item));
        } catch (e) {
          books.add(BookModels.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failuar, List<BookModels>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject&Sorting=relevance');
      List<BookModels> books = [];
      for (var item in data["items"]) {
        try {
          books.add(BookModels.fromJson(item));
        } catch (e) {
          books.add(BookModels.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
