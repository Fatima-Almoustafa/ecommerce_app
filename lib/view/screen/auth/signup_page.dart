import 'package:ecommirce_app/controller/auth/login_controller.dart';
import 'package:ecommirce_app/core/constant/app_color.dart';
import 'package:ecommirce_app/view/widget/login/custom_button_login_widget.dart';
import 'package:ecommirce_app/view/widget/login/custom_text_form_field_widget.dart';
import 'package:ecommirce_app/view/widget/login/custom_text_signup_or_signin_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../widget/login/custom_text_body_widget.dart';
import '../../widget/login/custom_text_title_widget.dart';
import '../../widget/login/logo_login_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp signUpController = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.colorBackgroundOnboarding,
      appBar: AppBar(
        backgroundColor: AppColor.colorBackgroundOnboarding,
        elevation: 0.0,
        title: Text(
          "signUp".tr,
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: ListView(
          children: [
           // const LogoLoginWidget(),
            CustomTextTitleWidget(
              textTitle: "welcome".tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextBodyWidget(
              textBody: "bodyTextSignUp".tr,
            ),
            const SizedBox(
              height: 40,
            ),
                CustomTextFormFieldWidget(
              myController: signUpController.emailController,
              textLabel: "userName".tr,
              textHint: "hintUserName".tr,
              icon: Icons.person,
            ),
            CustomTextFormFieldWidget(
              myController: signUpController.emailController,
              textLabel: "email".tr,
              textHint: "hintEmail".tr,
              icon: Icons.email_outlined,
            ),
                CustomTextFormFieldWidget(
              myController: signUpController.emailController,
              textLabel: "phone".tr,
              textHint: "hintPhone".tr,
              icon: Icons.phone_android_outlined,
            ),
            CustomTextFormFieldWidget(
              myController: signUpController.passwordController,
              textLabel: "password".tr,
              textHint: "hintPassword".tr,
              icon: Icons.lock_outline,
            ),
            CustomButtonLoginWidget(
              textButton: "signUp".tr,
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextSignUpOrSigninWidget(
             textMessage: "haveAccountMessage".tr,
             textTwo: "signIn".tr,
             onTap: (){
              signUpController.goToSignIn();
             })
          ],
        ),
      ),
    );
  }
}
