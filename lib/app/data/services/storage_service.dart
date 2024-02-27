import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:game/app/data/models/newuser/new_user.dart';
import 'package:get/get.dart';

class StorageService extends GetxService {

  final storage = new FlutterSecureStorage();

  Future<String?> readkey() async {//одна общая другая для конкретной задачи
    return await read('key'); 
  }

  Future<String?> read(String key) async {
    return await storage.read(key: key);
  }

  Future<void> savekey(String key) async {
    await write('key', key);
  }

  Future<void> write(String key, String data) async {
    await storage.write(key: key, value: data);
  }

}