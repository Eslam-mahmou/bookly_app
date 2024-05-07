import 'package:bookly_app_test/Features/SearchView/presentation/view/widget/SearchViewBody.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SearchViewBody(),
    ));
  }
}
