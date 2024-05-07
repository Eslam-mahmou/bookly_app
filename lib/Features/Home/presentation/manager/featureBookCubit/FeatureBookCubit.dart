import 'package:bookly_app_test/Features/Home/data/Repos/HomeRepo.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/featureBookCubit/FeatureBookState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(InitialFeatureBookState());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(LoadingFeatureBookState());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failuar) {
      emit(FailuarFeatureBookState(failuar.errMessage));
    }, (books) {
      emit(SuccessFeatureBookState(books));
    });
  }
}
