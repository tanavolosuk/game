import 'package:flutter/material.dart';
import 'package:game/app/routes/app_pages.dart';
import 'package:get/get.dart';

class PlayerRegistrationPageController extends GetxController {

  var nickNameController = TextEditingController();


   void signUp () {
    if (nickNameController.text == "") {
      showSnack("Убедитесь, что ввели никнейм!");
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
  
  //TODO: Implement PlayerRegistrationPageController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
