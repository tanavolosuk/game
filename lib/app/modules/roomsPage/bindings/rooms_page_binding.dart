import 'package:game/app/data/services/storage_service.dart';
import 'package:get/get.dart';

import '../controllers/rooms_page_controller.dart';

class RoomsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StorageService>(
      () => StorageService(),
    );
    Get.lazyPut<RoomsPageController>(
      () => RoomsPageController(),
    );
  }
}
