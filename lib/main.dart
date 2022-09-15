import 'package:ecommirce_app/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'core/constant/app_color.dart';
import 'view/screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ecommirce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColor.colorHeadText1),
            bodyText1: TextStyle(
              height: 2,
              fontSize: 18,
              color: AppColor.colorBodyText,
            ),
          )),
      routes: routes,
      home: const OnBoardingScreen(),
    );
  }
}
