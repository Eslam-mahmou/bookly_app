import 'package:bookly_app_test/Core/Api/ApiService.dart';
import 'package:bookly_app_test/Features/Home/data/Repos/HomeRepoImp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;
void setSrviceAllocator() {
  gitIt.registerSingleton<HomeRepoImp>(HomeRepoImp(ApiService(Dio())));
}
