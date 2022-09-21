import 'package:get/get.dart';
import 'package:thebig/feature/detail/detail_page.dart';
import 'package:thebig/feature/home/home_page.dart';
import 'package:thebig/feature/login/login_page.dart';
import '../feature/detail/detail_binding.dart';
import '../feature/home/home_binding.dart';
import '../feature/login/login_binding.dart';
import '../feature/splash_screen/splash_binding.dart';
import '../feature/splash_screen/splash_page.dart';
import 'app_routes.dart';

class AppPages{
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: ()=> const SplashPage(),
        binding: SplashBinding()
    ),
    GetPage(
        name: Routes.login,
        page: ()=> const LoginPage(),
        binding: LoginBinding()
    ),
    GetPage(
        name: Routes.home,
        page: ()=> const HomePage(),
        binding: HomeBinding()
    ),
    GetPage(
        name: Routes.detail,
        page: ()=> const DetailPage(),
        binding: DetailBinding()
    ),
  ];
}