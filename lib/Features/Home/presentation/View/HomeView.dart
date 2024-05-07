
import 'package:bookly_app_test/Features/Home/presentation/View/widget/HomeViewBody.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body:HomeViewBody(
       
      ),
    ));
  }
}
