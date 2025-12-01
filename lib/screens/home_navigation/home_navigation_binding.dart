import 'package:comiverse_app/screens/comic_types/comic_types_screen_viewmodel.dart';
import 'package:comiverse_app/screens/friends/friends_screen_viewmodel.dart';
import 'package:comiverse_app/screens/home/home_screen_viewmodel.dart';
import 'package:comiverse_app/screens/home_navigation/home_navigation_viewmodel.dart';
import 'package:comiverse_app/screens/messages/messages_screen_viewmodel.dart';
import 'package:comiverse_app/screens/personal/personal_screen_viewmodel.dart';
import 'package:comiverse_app/screens/settings/settings_screen_viewmodel.dart';
import 'package:get/get.dart';

class HomeNavigationBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get
      ..lazyPut(
        () => HomeNavigationViewmodel(),
      )
      ..lazyPut(
        () => ComicTypesScreenViewmodel(),
      )
      ..lazyPut(
        () => MessagesScreenViewmodel(),
      )
      ..lazyPut(
        () => PersonalScreenViewmodel(),
      )
      ..lazyPut(
        () => FriendsScreenViewmodel(),
      )
      ..lazyPut(
        () => SettingsScreenViewmodel(),
      )
      ..lazyPut(
        () => HomeScreenViewmodel(),
      );
  }
}
