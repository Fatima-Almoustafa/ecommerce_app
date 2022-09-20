import 'package:ecommirce_app/core/constant/app_route.dart';
import 'package:ecommirce_app/view/screen/login_page.dart';
import 'package:ecommirce_app/view/screen/onboarding_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const LoginPage(),
   AppRoute.onboarding: (context) => const OnBoardingScreen(),
};
