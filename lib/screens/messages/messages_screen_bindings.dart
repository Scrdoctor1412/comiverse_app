import 'package:comiverse_app/screens/messages/messages_screen_viewmodel.dart';
import 'package:get/get.dart';

class MessagesScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessagesScreenViewmodel());
  }
}
