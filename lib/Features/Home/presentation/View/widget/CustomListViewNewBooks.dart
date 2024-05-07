import 'package:bookly_app_test/Core/widget/CustomError.dart';
import 'package:bookly_app_test/Core/widget/CustomSingleIndecator.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/CustomNewBooks.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/NewestBooksCubit/NewestBooksCubit.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/NewestBooksCubit/NewestBooksState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListViewNewBooks extends StatelessWidget {
  const CustomListViewNewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is SuccessNewestBooksState) {
          return ListView.builder(
             // physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomNewBooks(
                    bookModels: state.books[index],
                  ),
                );
              });
        }
        if (state is FailuarNewestBooksState) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomSingleIndecator();
        }
      },
    );
  }
}
