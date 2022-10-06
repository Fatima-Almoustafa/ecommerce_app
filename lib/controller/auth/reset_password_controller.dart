import 'package:ecommirce_app/core/constant/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  check();

  goToSuccesResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController newPasswordController;
    late TextEditingController rePasswordController;

  @override
  void onInit() {
    rePasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    rePasswordController.dispose();
    newPasswordController.dispose();
    super.dispose();
  }

  @override
  goToSuccesResetPassword() {
    Get.offNamed(AppRoute.successResetPassword);
  }

  @override
  check() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
