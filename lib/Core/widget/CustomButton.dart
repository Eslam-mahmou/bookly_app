import 'package:bookly_app_test/Core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderRadius,
      required this.text,
       this.onPressed});
  final void Function()?onPressed;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            )),
        child: Text(
          text,
          style: Style.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
