import 'package:comiverse_app/screens/auth/register/register_screen_viewmodel.dart';
import 'package:get/get.dart';

class RegisterScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RegisterScreenViewmodel(),
    );
  }
}
