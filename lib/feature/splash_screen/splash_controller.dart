import 'package:get/get.dart';

import '../../api/api2.dart';
import '../../page/app_routes.dart';

class SplashController extends GetxController{

  @override
  void onInit() async {
    splashAnimation();
    super.onInit();
  }

  splashAnimation() async {
    await Future.delayed(const Duration(seconds: 3));
    var loginStatus = await Api2().getIsLoginStatus();
    if(loginStatus == true){
      Get.offNamed(Routes.home);
    }else{
      Get.offNamed(Routes.login);
    }
  }
}