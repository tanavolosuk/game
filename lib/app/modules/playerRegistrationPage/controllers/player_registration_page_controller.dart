import 'package:flutter/material.dart';
import 'package:game/app/routes/app_pages.dart';
import 'package:get/get.dart';

class PlayerRegistrationPageController extends GetxController {
  var nickNameController = TextEditingController();

  void signUp() {
    bool isLatin(String text) {
      String pattern = r'^[a-zA-Z ]*$';
      RegExp regExp = RegExp(pattern);
      return regExp.hasMatch(text);
    }

    if (nickNameController.text == "") {
      showSnack("Убедитесь, что ввели никнейм!");
      return;
    } else if (!isLatin(nickNameController.text)) {
      showSnack("Никнейм должен быть написан на латинице");
      return;
    } else {
      Get.offNamed(Routes.ROOMS_PAGE);
    }
  }

  void showSnack(String message, {isError = true}) {
    Get.showSnackbar(GetSnackBar(
      message: message,
      backgroundColor: isError ? Colors.red : Colors.green,
      duration: const Duration(seconds: 2),
    ));
  }
}
