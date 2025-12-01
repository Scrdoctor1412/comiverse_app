import 'package:comiverse_app/screens/auth/login/login_screen.dart';
import 'package:comiverse_app/screens/auth/login/login_screen_binding.dart';
import 'package:comiverse_app/screens/auth/register/register_screen.dart';
import 'package:comiverse_app/screens/auth/register/register_screen_binding.dart';
import 'package:comiverse_app/screens/comic_types/comic_types_screen.dart';
import 'package:comiverse_app/screens/comic_types/comic_types_screen_bindings.dart';
import 'package:comiverse_app/screens/friends/friends_screen.dart';
import 'package:comiverse_app/screens/friends/friends_screen_bindings.dart';
import 'package:comiverse_app/screens/home/home_screen.dart';
import 'package:comiverse_app/screens/home/home_screen_binding.dart';
import 'package:comiverse_app/screens/home_navigation/home_navigation.dart';
import 'package:comiverse_app/screens/home_navigation/home_navigation_binding.dart';
import 'package:comiverse_app/screens/messages/messages_screen.dart';
import 'package:comiverse_app/screens/messages/messages_screen_bindings.dart';
import 'package:comiverse_app/screens/personal/personal_screen.dart';
import 'package:comiverse_app/screens/personal/personal_screen_bindings.dart';
import 'package:comiverse_app/screens/settings/settings_screen.dart';
import 'package:comiverse_app/screens/settings/settings_screen_bindings.dart';
import 'package:get/get.dart';

part 'route_paths.dart';

class AppRouter {
  static final String INITIAL_ROUTE = RoutePaths.login;

  static final routes = [
    GetPage(
      name: RoutePaths.login,
      page: () => LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: RoutePaths.register,
      page: () => RegisterScreen(),
      binding: RegisterScreenBinding(),
    ),
    GetPage(
      name: RoutePaths.homeNavigation,
      page: () => HomeNavigation(),
      binding: HomeNavigationBinding(),
    ),

    GetPage(
      name: RoutePaths.comicTypes,
      page: () => ComicTypesScreen(),
      binding: ComicTypesScreenBindings(),
    ),
    GetPage(
      name: RoutePaths.friends,
      page: () => FriendsScreen(),
      binding: FriendsScreenBindings(),
    ),
    GetPage(
      name: RoutePaths.messages,
      page: () => MessagesScreen(),
      binding: MessagesScreenBindings(),
    ),
    GetPage(
      name: RoutePaths.personal,
      page: () => PersonalScreen(),
      binding: PersonalScreenBindings(),
    ),
    GetPage(
      name: RoutePaths.settings,
      page: () => SettingsScreen(),
      binding: SettingsScreenBindings(),
    ),
    GetPage(
      name: RoutePaths.home,
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
    ),
  ];
}
