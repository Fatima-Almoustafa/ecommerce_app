import 'package:ecommirce_app/core/services/myservices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangeLocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  @override
  void onInit() {
    String? sharedPreferLangCode =
        myServices.sharedPreferences.getString("langCode");

    if (sharedPreferLangCode == "عربي") {
      language = const Locale("عربي");
    } else if (sharedPreferLangCode == "English") {
      language = const Locale("English");
    } else {
      language = Locale(Get.deviceLocale?.languageCode ?? " ");
    }
    super.onInit();
  }

  changeLocal(String langCode) {
    Locale? locale = Locale(langCode);

    myServices.sharedPreferences.setString("langCode", langCode);

    Get.updateLocale(locale);
  }
}
