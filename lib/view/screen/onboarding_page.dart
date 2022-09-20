import 'package:ecommirce_app/controller/onboarding_controller.dart';
import 'package:ecommirce_app/core/constant/app_color.dart';
import 'package:ecommirce_app/view/widget/onboarding/custom_butten_onboarding.dart';
import 'package:ecommirce_app/view/widget/onboarding/custom_dot_controller_onboarding.dart';
import 'package:ecommirce_app/view/widget/onboarding/custom_slider_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
      backgroundColor: AppColor.colorBackgroundOnboarding,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 4,
              child: CustomSliderOnboarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnboarding(),
                    Spacer(flex: 2,),
                    CustomButtonOnboarding(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
