import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:thebig/api/api2.dart';
import 'package:thebig/feature/login/login_api.dart';
import 'package:thebig/page/app_routes.dart';

class LoginController extends GetxController{
  final LoginApi api;
  LoginController({required this.api});

  final formkeyLogin = GlobalKey<FormState>();
  var loading = false.obs;

  var edtEmail = TextEditingController();
  var edtPassword = TextEditingController();

  @override
  void onClose() {
    edtEmail.dispose();
    edtPassword.dispose();
    super.onClose();
  }

  validator()async{
    if(formkeyLogin.currentState!.validate()){
      login();
    }else{
      log('login failed');
    }
  }

  login()async{
    try{
      loading(true);
      var loginResult = await api.login(kode_driver: edtEmail.text, password: edtPassword.text);
      if(loginResult != null){
        var token = loginResult["token"];
        await Api2().setToken(token: token);
        await Api2().setIsLoginStatus(isLogin: true);
        Get.offNamed(Routes.home);
      }
      loading(false);
    }catch(e){
      loading(false);
      log(e.toString());
    }
  }

}