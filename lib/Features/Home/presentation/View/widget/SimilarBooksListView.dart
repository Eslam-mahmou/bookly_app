import 'package:bookly_app_test/Core/functions/CustomLauncherUrl.dart';
import 'package:bookly_app_test/Core/widget/CustomError.dart';
import 'package:bookly_app_test/Core/widget/CustomSingleIndecator.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/SimilarBookItem.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/SimilarBooksCubit/SimilarBooksCubit.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/SimilarBooksCubit/SimilarBooksState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SuccessSimilarBooksState) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .14,
              child: ListView.builder(
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: GestureDetector(
                          onTap: (){
                            customLauncgerUrl(context, state.books[index].volumeInfo.previewLink);
                          },
                          child: SimilarBookItem(
                            imageUrl: state.books[index].volumeInfo.imageLinks
                                    ?.thumbnail ??
                                '',
                          ),
                        ));
                  }));
        }
        if (state is FailuarSimilarBooksState) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomSingleIndecator();
        }
      },
    );
  }
}
