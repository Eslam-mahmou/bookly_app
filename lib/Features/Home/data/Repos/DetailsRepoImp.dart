import 'package:bookly_app_test/Core/Api/ApiService.dart';
import 'package:bookly_app_test/Core/Error/Failuar.dart';
import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:bookly_app_test/Features/Home/data/Repos/DetailsRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class DetailsRepoImp implements DetalisRepo {
 final ApiService apiService;
 DetailsRepoImp(this.apiService);
 @override
 Future< Either<Failuar,List< BookModels>>> fetchSimilarBooks({required String category}) async{
  try {
  var data= await apiService.get(endPoint: 'volumes?q=subject:Computer Science&Sorting=relevance');
  List<BookModels> books=[];
  for (var item in data["items"]) {
    books.add(BookModels.fromJson(item));
  }
  return right(books);
} catch (e) {
  if(e is DioError){
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}
   
  }
}


