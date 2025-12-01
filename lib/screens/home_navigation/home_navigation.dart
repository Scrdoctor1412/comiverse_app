import 'package:comiverse_app/core/theme/app_pallete.dart';
import 'package:comiverse_app/screens/home_navigation/home_navigation_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNavigation extends GetView<HomeNavigationViewmodel> {
  static const String routeName = "/homeNavigation";
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _body() {
      return Obx(() => controller.listMenu[controller.currentIndex.value].page);
    }

    return Scaffold(
      body: _body(),
      bottomNavigationBar: Obx(
        () => Container(
          padding: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            // boxShadow: const [
            //   BoxShadow(
            //     color: Colors.black12,
            //     blurRadius: 2,
            //     spreadRadius: 1,
            //   ),
            // ],
            color: Colors.white.withValues(alpha: 0.8),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: controller.currentIndex.value,
            onTap: (value) {
              controller.setCurrentIndex(value);
            },
            selectedItemColor: AppPallete.primaryMain,
            unselectedItemColor: Colors.grey,
            // backgroundColor: Colors.transparent,
            items: controller.listMenu
                .map(
                  (e) => BottomNavigationBarItem(
                    icon: Icon(
                      e.iconData,
                      color: Colors.grey,
                    ),
                    label: e.title,
                    activeIcon: Icon(
                      e.selectedIconData,
                      color: AppPallete.primaryMain,
                    ),
                    backgroundColor: Colors.transparent,
                    // activeIcon: AppPallete.primaryMain,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
