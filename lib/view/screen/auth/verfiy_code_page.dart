import 'package:ecommirce_app/core/constant/app_color.dart';
import 'package:ecommirce_app/view/widget/login/custom_button_login_widget.dart';
import 'package:ecommirce_app/view/widget/login/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../controller/auth/verfiy_code_controller.dart';
import '../../widget/login/custom_text_body_widget.dart';
import '../../widget/login/custom_text_title_widget.dart';


class VerfiyCodepage extends StatelessWidget {
  const VerfiyCodepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerfiyCodeControllerImp verfiyCodeController = Get.put(VerfiyCodeControllerImp());
    return Scaffold(
      backgroundColor: AppColor.colorBackgroundOnboarding,
      appBar: AppBar(
        backgroundColor: AppColor.colorBackgroundOnboarding,
        elevation: 0.0,
        title: Text(
          "verfiyCode".tr,
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: ListView(
          children: [
            CustomTextTitleWidget(
              textTitle: "checkCode".tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextBodyWidget(
              textBody: "bodyTextVerfiyCode".tr,
            ),
            const SizedBox(
              height: 40,
            ),
             OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor:const Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
              verfiyCodeController.goToResetPassword();
              }, // end onSubmit
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
