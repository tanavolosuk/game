import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:game/app/data/models/currentuser/current_user.dart';
import 'package:game/app/data/models/newuser/new_user.dart';
import 'package:game/app/data/services/network_service.dart';
import 'package:game/app/data/services/storage_service.dart';
import 'package:game/app/routes/app_pages.dart';
import 'package:game/core/constans.dart';
import 'package:get/get.dart';

class PlayerRegistrationPageController extends GetxController {
  var nickNameController = TextEditingController();
  var netService = Get.find<NetService>();

  late NewUser newUser;

  void signUp() async {
    // bool isLatin(String text) {
    //   String pattern = r'^[a-zA-Z ]*$';
    //   RegExp regExp = RegExp(pattern);
    //   return regExp.hasMatch(text);
    // }

    var successRegistration = await netService.registration(nickNameController.text);
    print(successRegistration);
    if(successRegistration){
      Get.offNamed(Routes.ROOMS_PAGE);
    }else{
      showSnack('Пользователь уже существует');
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
