import 'package:flutter/material.dart';
import 'package:game/app/data/models/newuser/new_user.dart';
import 'package:game/app/data/services/network_service.dart';
import 'package:game/app/routes/app_pages.dart';
import 'package:game/core/constans.dart';
import 'package:get/get.dart';

class PlayerRegistrationPageController extends GetxController {
  var nickNameController = TextEditingController();
  var netService = Get.find<NetService>();

  late NewUser newUser;

  void signUp() async {

    var successRegistration = await netService.registration(nickNameController.text);
    print(successRegistration);
    if(successRegistration){
      Get.offNamed(Routes.ROOMS_PAGE);
    }else{
      showSnack('Пользователь уже существует');
    }
  }
}
