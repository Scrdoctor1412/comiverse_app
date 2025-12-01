import 'package:comiverse_app/navigation/app_router.dart';
import 'package:comiverse_app/screens/comic_types/comic_types_screen.dart';
import 'package:comiverse_app/screens/friends/friends_screen.dart';
import 'package:comiverse_app/screens/home/home_screen.dart';
import 'package:comiverse_app/screens/messages/messages_screen.dart';
import 'package:comiverse_app/screens/personal/personal_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu {
  Menu({
    required this.title,
    required this.iconData,
    this.index,
    required this.page,
    this.routeChildName,
    this.selectedIconData,
  });

  int? index;
  String title;
  dynamic iconData;
  IconData? selectedIconData;
  Widget page;
  String? routeChildName;

  static List<Menu> tabMenu = [
    Menu(
      index: 0,
      title: 'Trang chủ',
      iconData: Icons.home_outlined,
      selectedIconData: Icons.home,
      page: Navigator(
        key: Get.nestedKey(0),
        onGenerateRoute: (settings) {
          return GetPageRoute(
            page: () => HomeScreen(),
            transition: Transition.leftToRight,
          );
        },
        // child: const HomePage(),
      ),
      routeChildName: RoutePaths.home,
    ),
    Menu(
      index: 1,
      title: 'Thể loại',
      iconData: Icons.style_outlined,
      selectedIconData: Icons.style,

      page: Navigator(
        key: Get.nestedKey(1),
        onGenerateRoute: (settings) {
          return GetPageRoute(
            page: () => ComicTypesScreen(),
            transition: Transition.leftToRight,
          );
        },
        // child: const HomePage(),
      ),
      routeChildName: RoutePaths.comicTypes,
    ),
    Menu(
      index: 2,
      title: 'Bạn bè',
      iconData: Icons.groups_outlined,
      selectedIconData: Icons.groups,
      page: Navigator(
        key: Get.nestedKey(2),
        onGenerateRoute: (settings) {
          return GetPageRoute(
            page: () => FriendsScreen(),
            transition: Transition.leftToRight,
          );
        },
        // child: const HomePage(),
      ),
      routeChildName: RoutePaths.friends,
    ),
    Menu(
      index: 3,
      title: 'Tin nhắn',
      iconData: Icons.message_outlined,
      selectedIconData: Icons.message,
      page: Navigator(
        key: Get.nestedKey(3),
        onGenerateRoute: (settings) {
          return GetPageRoute(
            page: () => MessagesScreen(),
            transition: Transition.leftToRight,
          );
        },
        // child: const HomePage(),
      ),
      routeChildName: RoutePaths.messages,
    ),
    Menu(
      index: 4,
      title: 'Cá nhân',
      iconData: Icons.person_outline,
      selectedIconData: Icons.person,
      page: Navigator(
        key: Get.nestedKey(4),
        onGenerateRoute: (settings) {
          return GetPageRoute(
            page: () => PersonalScreen(),
            transition: Transition.leftToRight,
          );
        },
        // child: const HomePage(),
      ),
      routeChildName: RoutePaths.personal,
    ),
  ];
}
