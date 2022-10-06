import 'package:ecommirce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
  checkCode();

  goToResetPassword();
}

class VerfiyCodeControllerImp extends VerfiyCodeController {
  late String verificationCode;


  @override
  void onInit() {
    super.onInit();
  }

 

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  checkCode() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
