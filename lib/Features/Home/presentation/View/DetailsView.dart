import 'package:bookly_app_test/Core/Api/ApiService.dart';
import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:bookly_app_test/Features/Home/data/Repos/DetailsRepoImp.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/DetailsViewBody.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/SimilarBooksCubit/SimilarBooksCubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetalisView extends StatelessWidget {
  const DetalisView({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilarBooksCubit(
        DetailsRepoImp(ApiService(Dio())),

      )..fetchSimilarBooks(category: bookModels.volumeInfo.categories![0]),
      child: Scaffold(
        body: SafeArea(
          child: DetalisViewBody(
            bookModels: bookModels,
          ),
        ),
      ),
    );
  }
}
