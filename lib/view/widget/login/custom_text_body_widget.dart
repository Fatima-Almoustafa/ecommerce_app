import 'package:flutter/material.dart';

class CustomTextBodyWidget extends StatelessWidget {
  final String textBody;
  const CustomTextBodyWidget({Key? key, required this.textBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textBody,
      style: Theme.of(context).textTheme.bodyText1,
      textAlign: TextAlign.center,
    );
  }
}
