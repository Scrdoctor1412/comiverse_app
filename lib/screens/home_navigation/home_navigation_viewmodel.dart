import 'package:comiverse_app/core/base/base_viewmodel.dart';
import 'package:comiverse_app/data/models/menu.dart';
import 'package:get/get.dart';

class HomeNavigationViewmodel extends GetViewModelBase {
  List<Menu> listMenu = [];

  @override
  void onInit() {
    super.onInit();
    listMenu.assignAll(Menu.tabMenu);
  }

  RxInt currentIndex = 0.obs;

  // int get currentIndex => _currentIndex;

  void setCurrentIndex(int value) {
    currentIndex.value = value;
  }
}
