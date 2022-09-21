import 'package:get/get.dart';
import 'package:thebig/feature/splash_screen/splash_controller.dart';
import '../../feature/login/login_api.dart';
import '../../feature/login/login_controller.dart';

class BindController extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(LoginController(api: LoginApi()));
  }
}