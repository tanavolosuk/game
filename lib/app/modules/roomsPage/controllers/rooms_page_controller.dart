import 'package:flutter/material.dart';
import 'package:game/app/data/models/session/session.dart';
import 'package:game/app/data/services/network_service.dart';
import 'package:game/app/routes/app_pages.dart';
import 'package:game/core/constans.dart';
import 'package:get/get.dart';

class RoomsPageController extends GetxController {
  var sessionNameController = TextEditingController();
  var netService = Get.find<NetService>();

  RxList<Session> sessions = <Session>[].obs; 

  @override
  void onReady() {
    super.onReady();
  }

  void getSessions() async {
    sessions.value = await netService.getSessions();
    print(sessions);
    print("GET S");
  }

  void createSession() async{
    // bool isLatin(String text) {
    //   String pattern = r'^[a-zA-Z ]*$';
    //   RegExp regExp = RegExp(pattern);
    //   return regExp.hasMatch(text);
    // }

    // if (!isLatin(sessionNameController.text)) {
    //   showSnack("Имя игры должно быть написано на латинице");
    //   return;
    // }
    var successCreateGame = await netService.writeSession(sessionNameController.text);
    print(successCreateGame);
    if(successCreateGame != null){
      Get.offNamed(Routes.GAME_PAGE);
    }else{
      showSnack('Чет не то');
    }
  }

  void goToRegistration() {
    Get.offNamed(Routes.PLAYER_REGISTRATION_PAGE);
  }
}
