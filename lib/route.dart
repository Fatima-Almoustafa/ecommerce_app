import 'package:ecommirce_app/core/constant/app_route.dart';
import 'package:ecommirce_app/view/screen/auth/forget_password_page.dart';
import 'package:ecommirce_app/view/screen/auth/login_page.dart';
import 'package:ecommirce_app/view/screen/auth/reset_password_page.dart';
import 'package:ecommirce_app/view/screen/auth/signup_page.dart';
import 'package:ecommirce_app/view/screen/auth/success_reset_password_page.dart';
import 'package:ecommirce_app/view/screen/auth/success_signup_page.dart';
import 'package:ecommirce_app/view/screen/auth/verfiy_code_page.dart';
import 'package:ecommirce_app/view/screen/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';


Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const LoginPage(),
  AppRoute.signUp:(context)=> const SignUpPage(),
  AppRoute.forgetPassword :(context)=> const ForgetPasswordPage(),
  AppRoute.resetPassword:(context)=> const ResetPasswordPage(),
  AppRoute.verfiyCode :(context)=> const VerfiyCodepage(),
  AppRoute.successSignUp :(context)=> const SuccessSignUpPage(),
  AppRoute.successResetPassword:(context)=> const SuccessResetPasswordPage(),
  AppRoute.onboarding: (context) => const OnBoardingScreen(),
};
