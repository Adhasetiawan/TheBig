import 'dart:developer';
import 'package:thebig/api/api1.dart';

class LoginApi{

  //login
  Future<dynamic> login({required var kode_driver, required var password})async{
  final input ={
    "kode_driver" : kode_driver,
    "password" : password,
  };
  var r = await Api1().apiJSONPost('api_v1/login/loginDriver', input);
  log(r.toString());
  return r ;
}

}