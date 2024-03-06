import 'package:flutter/material.dart';
import 'package:game/app/data/services/storage_service.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/data/services/network_service.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await initServices();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}

Future<void> initServices() async {
  await GetStorage.init('main');
  await Get.putAsync(() => StorageService().init());
  await Get.putAsync(() => NetService().init());
}
