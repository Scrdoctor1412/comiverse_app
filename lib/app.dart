import 'package:comiverse_app/core/theme/theme_primary.dart';
import 'package:comiverse_app/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
      title: "ComiVerse",
      onReady: () {},
      onInit: () {},
      onDispose: () {},
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppRouter.INITIAL_ROUTE,
      getPages: AppRouter.routes,
      theme: ThemePrimary.theme(),
    );
  }
}
