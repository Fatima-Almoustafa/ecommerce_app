import 'package:ecommirce_app/controller/auth/reset_password_controller.dart';
import 'package:ecommirce_app/core/constant/app_color.dart';
import 'package:ecommirce_app/view/widget/login/custom_button_login_widget.dart';
import 'package:ecommirce_app/view/widget/login/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../widget/login/custom_text_body_widget.dart';
import '../../widget/login/custom_text_title_widget.dart';


class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp resetPasswordController = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.colorBackgroundOnboarding,
      appBar: AppBar(
        backgroundColor: AppColor.colorBackgroundOnboarding,
        elevation: 0.0,
        title: Text(
          "resetPassword".tr,
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: ListView(
          children: [
            CustomTextTitleWidget(
              textTitle: "newPassword".tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextBodyWidget(
              textBody: "bodyTextResetPassword".tr,
            ),
            const SizedBox(
              height: 40,
            ),
              CustomTextFormFieldWidget(
              myController: resetPasswordController.newPasswordController,
              textLabel: "newPassword".tr,
              textHint: "hintNewPassword".tr,
              icon: Icons.lock_outline,
            ),
            CustomTextFormFieldWidget(
              myController: resetPasswordController.rePasswordController,
              textLabel: "rePassword".tr,
              textHint: "hintRePassword".tr,
              icon: Icons.lock_outline,
            ),

            CustomButtonLoginWidget(
              textButton: "save".tr,
              onPressed: () {
                resetPasswordController.goToSuccesResetPassword();
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
