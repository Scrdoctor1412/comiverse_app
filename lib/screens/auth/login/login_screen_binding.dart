import 'package:comiverse_app/screens/auth/login/login_screen_viewmodel.dart';
import 'package:get/get.dart';

class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenViewmodel());
  }
}
