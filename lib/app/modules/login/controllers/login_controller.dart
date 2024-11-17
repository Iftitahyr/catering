import 'package:get/get.dart';

class LoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;

  void login() {
    // Add your login logic here
    if (username.value == 'admin' && password.value == '1234') {
      print('Login Successful');
    } else {
      print('Login Failed');
    }
  }
}
