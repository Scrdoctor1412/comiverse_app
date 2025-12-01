import 'package:comiverse_app/screens/personal/personal_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalScreen extends GetView<PersonalScreenViewmodel> {
  static const String routeName = "/personal";
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello world"),
      ),
    );
  }
}
