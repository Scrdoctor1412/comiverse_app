import 'package:comiverse_app/screens/login/login_screen.dart';
import 'package:comiverse_app/screens/login/login_screen_binding.dart';
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
  ];
}
