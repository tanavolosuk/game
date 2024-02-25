import 'package:get/get.dart';

import '../controllers/rooms_page_controller.dart';

class RoomsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoomsPageController>(
      () => RoomsPageController(),
    );
  }
}
