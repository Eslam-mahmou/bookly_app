import 'package:bookly_app_test/Core/Api/ApiService.dart';
import 'package:bookly_app_test/Core/Utils/AppRouter.dart';
import 'package:bookly_app_test/Features/Home/data/Repos/HomeRepoImp.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/NewestBooksCubit/NewestBooksCubit.dart';
import 'package:bookly_app_test/Features/Home/presentation/manager/featureBookCubit/FeatureBookCubit.dart';
import 'package:bookly_app_test/constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBookCubit(
                HomeRepoImp(
                  ApiService(
                    Dio()
                  )
                )
              )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(
                  HomeRepoImp(
                  ApiService(
                    Dio()
                  )
                )
              )..fetchNewestBooks(),
        ),
        
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
