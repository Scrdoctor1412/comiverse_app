import 'package:get/get.dart';

class SettingsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SettingsScreenBindings(),
    );
  }
}
