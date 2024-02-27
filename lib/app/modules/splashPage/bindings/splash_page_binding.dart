import 'package:game/app/data/services/storage_service.dart';
import 'package:get/get.dart';

import '../controllers/splash_page_controller.dart';

class SplashPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StorageService>(
      StorageService(),
    );
    Get.put<SplashPageController>(
      SplashPageController(),
    );
  }
}
