import 'package:dio/dio.dart';
import 'package:game/app/data/models/newuser/new_user.dart';
import 'package:game/core/constans.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StorageService extends GetxService {

  late Box box;

  
  Future<StorageService> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox('xo');
    return this;
  }
}