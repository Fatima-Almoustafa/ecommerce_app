import 'package:ecommirce_app/controller/auth/forget_password_controller.dart';
import 'package:ecommirce_app/core/constant/app_color.dart';
import 'package:ecommirce_app/view/widget/login/custom_button_login_widget.dart';
import 'package:ecommirce_app/view/widget/login/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../widget/login/custom_text_body_widget.dart';
import '../../widget/login/custom_text_title_widget.dart';


class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp forgetPasswordController = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.colorBackgroundOnboarding,
      appBar: AppBar(
        backgroundColor: AppColor.colorBackgroundOnboarding,
        elevation: 0.0,
        title: Text(
          "forgetPassword".tr,
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: ListView(
          children: [
            CustomTextTitleWidget(
              textTitle: "checkEmail".tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextBodyWidget(
              textBody: "bodyTextForgetPassword".tr,
            ),
            const SizedBox(
              height: 40,
            ),
          
            CustomTextFormFieldWidget(
              myController: forgetPasswordController.emailController,
              textLabel: "email".tr,
              textHint: "hintEmail".tr,
              icon: Icons.email_outlined,
            ),

            CustomButtonLoginWidget(
              textButton: "check".tr,
              onPressed: () {
                forgetPasswordController.goToVerfiyCode();
              },
            ),
            const SizedBox(
              height: 30,
            ),
          
          ],
        ),
      ),
    );
  }
}
