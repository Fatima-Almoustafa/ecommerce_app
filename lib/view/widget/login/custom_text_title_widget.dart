import 'package:flutter/material.dart';

class CustomTextTitleWidget extends StatelessWidget {
  final String textTitle;
  const CustomTextTitleWidget({Key? key, required this.textTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textTitle,
      style: Theme.of(context).textTheme.headline1,
      textAlign: TextAlign.center,
    );
  }
}
