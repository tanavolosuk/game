import 'package:game/app/data/services/storage_service.dart';
import 'package:get/get.dart';

import '../controllers/player_registration_page_controller.dart';

class PlayerRegistrationPageBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<StorageService>(
    //   () => StorageService(),
    // );
    Get.lazyPut<PlayerRegistrationPageController>(
      () => PlayerRegistrationPageController(),
    );
  }
}
