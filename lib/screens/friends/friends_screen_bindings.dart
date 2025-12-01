import 'package:comiverse_app/screens/friends/friends_screen_viewmodel.dart';
import 'package:get/get.dart';

class FriendsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => FriendsScreenViewmodel(),
    );
  }
}
