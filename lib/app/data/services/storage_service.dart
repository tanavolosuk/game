import 'dart:convert';

import 'package:game/app/data/models/newuser/new_user.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

class StorageService extends GetxService {

  late Box box;

  //final box = GetStorage('main');

  //GetStorage box = GetStorage('main');

  Future<StorageService> init() async {

    await Hive.initFlutter();
    box = await Hive.openBox('game');
    return this;
    // await GetStorage.init('main');
    // box = await GetStorage('main');
   // return this;
  }

  Future<void> writeUserData(NewUser data) async {
    var jsonData = data.toJson();
    var stringData = jsonEncode(jsonData);
    await box.put('userData', stringData);
    print('writeUserData');
    print(stringData);
    readUserData();
  }

  NewUser? readUserData() {
    String? stringData = box.get('userData');
    if (stringData == null) return null;
    Map<String, dynamic> jsonData = jsonDecode(stringData);
    NewUser data = NewUser.fromJson(jsonData);
    print('readUserData');
    print('hjdcbsj ${data}');
    return data;
  }

  //Future<NewUser> readUserData() => box.read('userData');
}
