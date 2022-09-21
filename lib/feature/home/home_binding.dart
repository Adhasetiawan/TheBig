import 'package:get/get.dart';
import 'package:thebig/feature/home/home_api.dart';
import 'package:thebig/feature/home/home_controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(api: HomeApi()));
  }
}