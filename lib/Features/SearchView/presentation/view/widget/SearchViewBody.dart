import 'package:bookly_app_test/Core/Utils/Styles.dart';
import 'package:bookly_app_test/Features/SearchView/presentation/view/widget/CustomSearchListView.dart';
import 'package:bookly_app_test/Features/SearchView/presentation/view/widget/CustomTextFiledSearch.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomTextFiledSearch(),
          SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Result',
              style: Style.textStyle20,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: CustomSearchListView())
        ],
      ),
    );
  }
}


