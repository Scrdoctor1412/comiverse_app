import 'package:comiverse_app/screens/settings/settings_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends GetView<SettingsScreenViewmodel> {
  static const String routeName = "/settings";
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Settings screen"),
      ),
    );
  }
}
