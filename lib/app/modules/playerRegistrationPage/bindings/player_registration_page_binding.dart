import 'package:get/get.dart';

import '../controllers/player_registration_page_controller.dart';

class PlayerRegistrationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayerRegistrationPageController>(
      () => PlayerRegistrationPageController(),
    );
  }
}
