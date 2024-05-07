import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/DetailsView.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/HomeView.dart';
import 'package:bookly_app_test/Features/SearchView/presentation/view/SearchView.dart';
import 'package:bookly_app_test/Features/SplashView/Presentation/View/SplashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

  static const kHomePage='/HomePage';
  static const kDetalisView='/DetalisView';
  static const kSearchView='/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: ( constBuildContext,GoRouterState state){
          return const SplashView();

        }),
        GoRoute(
        path: kHomePage,
        builder: ( constBuildContext,GoRouterState state){
          return const HomePage();

        }),
        GoRoute(
        path: kDetalisView,
        builder: ( constBuildContext,GoRouterState state){
          return  DetalisView(
            bookModels: state.extra as BookModels,
          );

        }),
         GoRoute(
        path: kSearchView,
        builder: ( constBuildContext,GoRouterState state){
          return const SearchView();

        }),
    ]);
}
