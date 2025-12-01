import 'package:comiverse_app/screens/comic_types/comic_types_screen_viewmodel.dart';
import 'package:get/get.dart';

class ComicTypesScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ComicTypesScreenViewmodel(),
    );
  }
}
