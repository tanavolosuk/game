import 'package:flutter/material.dart';
import 'package:game/app/routes/app_pages.dart';
import 'package:get/get.dart';

class RoomsPageController extends GetxController {

  var sessionNameController = TextEditingController();

  void goToRegistration () {
      Get.offNamed(Routes.PLAYER_REGISTRATION_PAGE);
    }

  //TODO: Implement RoomsPageController


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
