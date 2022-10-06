import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String textLabel;
  final String textHint;
  final IconData? icon;
 final TextEditingController  myController;
  const CustomTextFormFieldWidget(
      {Key? key, required this.textLabel, required this.textHint, this.icon, required this.myController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        controller: myController,
        decoration: InputDecoration(
            suffixIcon: Icon(icon),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(textLabel)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: textHint,
            hintStyle: const TextStyle(fontSize: 14),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
