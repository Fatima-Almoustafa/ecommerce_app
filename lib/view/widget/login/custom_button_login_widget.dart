import 'package:ecommirce_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomButtonLoginWidget extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonLoginWidget(
      {Key? key, required this.textButton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
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
