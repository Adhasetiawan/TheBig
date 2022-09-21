import 'package:get/get.dart';
import 'package:thebig/feature/detail/detail_api.dart';
import 'package:thebig/feature/detail/detail_controller.dart';

class DetailBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(() => DetailController(api: DetailApi()));
  }
}