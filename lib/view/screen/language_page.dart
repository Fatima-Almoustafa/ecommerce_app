import 'package:ecommirce_app/core/constant/app_route.dart';
import 'package:ecommirce_app/view/widget/language_page/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/localization/change_local.dart';

class LanguagePage extends GetView<ChangeLocalController> {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "langCode".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonWidget(
              textButton: "عربي",
              onPressed: () {
                controller.changeLocal("عربي");
                Get.toNamed(AppRoute.onboarding);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButtonWidget(
              textButton: "English",
              onPressed: () {
                controller.changeLocal("English");
                Get.toNamed(AppRoute.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
