import 'package:comiverse_app/core/base/base_viewmodel.dart';
import 'package:comiverse_app/screens/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreenRebuildId {
  const RegisterScreenRebuildId._();
  static const String passwordField = "passwordField";
  static const String emailField = "emailField";
  static const String nameField = "nameField";
}

class RegisterScreenViewmodel extends GetViewModelBase {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.onClose();
  }

  void onTapTogglePassword() {
    isPasswordVisible = !isPasswordVisible;
    update([RegisterScreenRebuildId.passwordField]);
  }

  void onTapToLoginScreen() {
    Get.offAllNamed(LoginScreen.routeName);
  }
}
