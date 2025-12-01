import 'package:comiverse_app/core/base/base_viewmodel.dart';
import 'package:comiverse_app/screens/auth/register/register_screen.dart';
import 'package:comiverse_app/screens/home_navigation/home_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenRebuildId {
  const LoginScreenRebuildId._();
  static const String passwordField = "passwordField";
  static const String emailField = "emailField";
}

class LoginScreenViewmodel extends GetViewModelBase {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isPasswordVisible = false;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void onTapTogglePassword() {
    isPasswordVisible = !isPasswordVisible;
    print("on tap togglePassword");
    update([LoginScreenRebuildId.passwordField]);
    // update();
  }

  void onTapToRegisterScreen() {
    Get.offAllNamed(RegisterScreen.routeName);
  }

  void onTapSignIn() {
    if (formKey.currentState!.validate()) {
      print("sign in");
      Get.toNamed(HomeNavigation.routeName);
    }
  }
}
