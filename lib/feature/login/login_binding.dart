import 'package:get/get.dart';
import 'package:thebig/feature/login/login_api.dart';
import 'package:thebig/feature/login/login_controller.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(api: LoginApi()));
  }
}