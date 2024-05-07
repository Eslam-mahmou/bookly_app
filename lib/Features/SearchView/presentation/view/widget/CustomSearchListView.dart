import 'package:bookly_app_test/Core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              'data',
              style: Style.textStyle16,
            ),
          );
        });
  }
}