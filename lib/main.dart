import 'package:ecommirce_app/core/localization/mytranslation.dart';
import 'package:ecommirce_app/core/services/myservices.dart';
import 'package:ecommirce_app/route.dart';
import 'package:ecommirce_app/view/screen/language_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'core/constant/app_color.dart';
import 'core/localization/change_local.dart';
import 'view/screen/onboarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChangeLocalController changeLocalController =
        Get.put(ChangeLocalController());
    return GetMaterialApp(
      title: 'Ecommirce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColor.colorHeadText1),
            bodyText1: TextStyle(
              height: 2,
              fontSize: 15,
              color: AppColor.colorBodyText,
            ),
          )),
      translations: MyTranslation(),
      locale:changeLocalController.language,
      routes: routes,
      home: const LanguagePage(),
    );
  }
}
