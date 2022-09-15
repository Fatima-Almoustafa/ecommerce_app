import 'package:ecommirce_app/controller/onboarding_controller.dart';
import 'package:ecommirce_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/data_source/static/static.dart';

class CustomDotControllerOnboarding extends StatelessWidget {
  const CustomDotControllerOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder <OnBoardingControllerImpl>(
      builder: ((controller) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 900),
                  width:controller.currentPage == index ? 20 : 6,
                  height: 6,
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      color: AppColor.colorBackgroundButton,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          )),
    );
  }
}
