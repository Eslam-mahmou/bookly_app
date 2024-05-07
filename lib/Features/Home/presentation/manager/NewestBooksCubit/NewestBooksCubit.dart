import 'package:bookly_app_test/Features/Home/data/Repos/HomeRepo.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/NewestBooksCubit/NewestBooksState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(InitialNewestBooksState());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(LoadingNewestBooksState());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failuar) {
      emit(FailuarNewestBooksState(failuar.errMessage));
    }, (books) {
      emit(SuccessNewestBooksState(books));
    });
  }
}
