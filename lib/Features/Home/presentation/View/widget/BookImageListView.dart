import 'package:bookly_app_test/Core/Utils/AppRouter.dart';
import 'package:bookly_app_test/Core/widget/CustomError.dart';
import 'package:bookly_app_test/Core/widget/CustomSingleIndecator.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/CustomBookImage.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/featureBookCubit/FeatureBookCubit.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/featureBookCubit/FeatureBookState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookImageListView extends StatelessWidget {
  const BookImageListView({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
      builder: (context, state) {
  if(state is SuccessFeatureBookState){
           return SizedBox(
          height: height,
          child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 6),
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kDetalisView,
                      extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ??'',
                    ),
                  ),
                );
              }),
        );

  }
 if(state is FailuarFeatureBookState){
  return CustomError(errMessage: state.errMessage);
 }
 else{
  return const CustomSingleIndecator();
 }
      },
    );
  }
}
