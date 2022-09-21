import 'package:get_storage/get_storage.dart';

const String CACHE_TOKEN = "token";
const String CHECK_LOGIN = "loginState";

class Api2{
  final local = GetStorage();

  //set get token
  Future setToken({String? token}) async {
    token ??= "";
    await local.write(CACHE_TOKEN, token);
  }
  Future<String?> getToken() async {
    return local.read(CACHE_TOKEN);
  }

  //set get login status
  Future setIsLoginStatus({bool? isLogin}) async {
    isLogin ??= false;
    await local.write(CHECK_LOGIN, isLogin);
  }
  Future<bool?> getIsLoginStatus() async {
    return local.read(CHECK_LOGIN);
  }

}