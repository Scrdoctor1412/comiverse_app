import 'package:get/get.dart';

class ValidatorHelper {
  static String? validateEmail(String? email) {
    if (email == null || email.trim() == "") return "COMMON.EMAIL_REQUITE".tr;
    var isValid = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+\.[a-zA-Z]+",
    ).hasMatch(email);
    if (!isValid) return "COMMON.EMAIL_INVALID".tr;
    return null;
  }

  static String? validatePassword(String pass) {
    if (pass == null || pass.trim() == "")
      return "COMMON.PASS_REQUITE".tr;
    else if (pass.length < 6)
      return "COMMON.PASS_REQUITE_LENGTH".tr;
    return null;
  }
}
