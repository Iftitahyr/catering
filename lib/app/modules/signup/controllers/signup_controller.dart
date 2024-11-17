import 'package:get/get.dart';

class SignUpController extends GetxController {
  var username = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  void signUp() {
    // Add your sign-up logic here
    if (password.value == confirmPassword.value) {
      print('Sign Up Successful');
    } else {
      print('Password Mismatch');
    }
  }
}
