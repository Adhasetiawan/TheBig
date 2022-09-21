import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:thebig/feature/splash_screen/splash_controller.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}