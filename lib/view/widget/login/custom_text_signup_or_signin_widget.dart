import 'package:ecommirce_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSigninWidget extends StatelessWidget {
  final String textMessage;
  final String textTwo;
  final Function() onTap;
  const CustomTextSignUpOrSigninWidget(
      {Key? key,
      required this.textMessage,
      required this.textTwo,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textMessage),
        InkWell(
          onTap: onTap,
          child: Text(
          textTwo ,
            style: const TextStyle(
                color: AppColor.colorBackgroundButton,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
