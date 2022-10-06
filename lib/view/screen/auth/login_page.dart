import 'package:ecommirce_app/controller/auth/login_controller.dart';
import 'package:ecommirce_app/core/constant/app_color.dart';
import 'package:ecommirce_app/view/widget/login/custom_button_login_widget.dart';
import 'package:ecommirce_app/view/widget/login/custom_text_form_field_widget.dart';
import 'package:ecommirce_app/view/widget/login/custom_text_signup_or_signin_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../widget/login/custom_text_body_widget.dart';
import '../../widget/login/custom_text_title_widget.dart';
import '../../widget/login/logo_login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp loginController = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColor.colorBackgroundOnboarding,
      appBar: AppBar(
        backgroundColor: AppColor.colorBackgroundOnboarding,
        elevation: 0.0,
        title: Text(
          "signIn".tr,
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: ListView(
          children: [
            const LogoLoginWidget(),
            CustomTextTitleWidget(
              textTitle: "welcome".tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextBodyWidget(
              textBody: "bodyTextLogin".tr,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextFormFieldWidget(
              myController: loginController.emailController,
              textLabel: "email".tr,
              textHint: "hintEmail".tr,
              icon: Icons.email_outlined,
            ),
            CustomTextFormFieldWidget(
              myController: loginController.passwordController,
              textLabel: "password".tr,
              textHint: "hintPassword".tr,
              icon: Icons.lock_outline,
            ),
            InkWell(
              onTap: (() {
                loginController.goToForgetPassword();
              }),
              child: Text(
                "forgetPassword".tr,
                textAlign: TextAlign.end,
              ),
            ),
            CustomButtonLoginWidget(
              textButton: "signIn".tr,
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextSignUpOrSigninWidget(
             textMessage: "noHaveAccountMessage".tr,
             textTwo: "signUp".tr,
             onTap: (){
              loginController.goToSignUp();
             })
          ],
        ),
      ),
    );
  }
}
