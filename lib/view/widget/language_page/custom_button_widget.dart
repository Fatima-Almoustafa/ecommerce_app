import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class CustomButtonWidget extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonWidget({Key? key, required this.textButton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: MaterialButton(
        height: 45,
        onPressed: onPressed,
        color: AppColor.colorBackgroundButton,
        textColor: Colors.white,
        child: Text(
          textButton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
