import 'package:bookly_app_test/Features/Home/data/Repos/DetailsRepo.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/SimilarBooksCubit/SimilarBooksState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState>{
  SimilarBooksCubit(this.detalisRepo):super(InitialSimilartBooksState());
 final DetalisRepo detalisRepo;
Future< void> fetchSimilarBooks({required String category})async{
  emit(LoadingSimilarBooksState());
   var result= await  detalisRepo.fetchSimilarBooks(category: category);
   result.fold((failuar) {
 emit(FailuarSimilarBooksState(failuar.errMessage));
   }, (books){
 emit(SuccessSimilarBooksState(books));
   });
}
}