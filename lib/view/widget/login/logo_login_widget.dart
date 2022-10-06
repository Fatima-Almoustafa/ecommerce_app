import 'package:ecommirce_app/core/constant/app_image_assets.dart';
import 'package:flutter/material.dart';

class LogoLoginWidget extends StatelessWidget {
  const LogoLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAssets.logo,
      height: 180,
    );
  }
}
