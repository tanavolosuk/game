import 'package:flutter/material.dart';
import 'package:game/app/routes/app_pages.dart';
import 'package:get/get.dart';

class RoomsPageController extends GetxController {
  var sessionNameController = TextEditingController();

  void createSession() {
    bool isLatin(String text) {
      String pattern = r'^[a-zA-Z ]*$';
      RegExp regExp = RegExp(pattern);
      return regExp.hasMatch(text);
    }

    if (!isLatin(sessionNameController.text)) {
      showSnack("Имя игры должно быть написано на латинице");
      return;
    }
  }

  void goToRegistration() {
    Get.offNamed(Routes.PLAYER_REGISTRATION_PAGE);
  }

  void showSnack(String message, {isError = true}) {
    Get.showSnackbar(GetSnackBar(
      message: message,
      backgroundColor: isError ? Colors.red : Colors.green,
      duration: const Duration(seconds: 2),
    ));
  }
}
