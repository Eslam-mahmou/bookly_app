import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFiledSearch extends StatelessWidget {
  const CustomTextFiledSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
                opacity: .5,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                )),
          ),
          enabledBorder: outLineBorder(),
          focusedBorder: outLineBorder()),
    );
  }
}

final items = List<String>.generate(10000, (i) => "Item $i");
OutlineInputBorder outLineBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12));
}
