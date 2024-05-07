import 'package:bookly_app_test/Core/Utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 15,
        ),
        const SizedBox(
          width: 6,
        ),
        const Text(
          '255',
          style: Style.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          count.toString(),
          style:
              Style.textStyle16.copyWith(color: Colors.white.withOpacity(.5)),
        ),
      ],
    );
  }
}
