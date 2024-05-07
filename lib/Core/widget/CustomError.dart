import 'package:bookly_app_test/Core/Utils/Styles.dart';
import 'package:flutter/widgets.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Style.textStyle20,
    );
  }
}
