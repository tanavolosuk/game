import 'package:game/app/data/services/storage_service.dart';
import 'package:game/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  var storageService = Get.find<StorageService>();

  @override
  void onReady() {
    print("jцлоатувл");
    var keyUser = storageService.readUserData();
    print(keyUser);
    if (keyUser == null) {
      Get.offNamed(Routes.PLAYER_REGISTRATION_PAGE);
    } else {
      Get.offNamed(Routes.ROOMS_PAGE);
    }
    super.onReady();
  }
}
