import 'package:bookly_app_test/Features/SplashView/Presentation/View/Widget/SplashViewBody.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static String id='SplashView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
