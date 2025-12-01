import 'package:get/get.dart';

class PersonalScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalScreenBindings());
  }
}
