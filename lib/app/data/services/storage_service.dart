import 'dart:convert';

import 'package:game/app/data/models/newuser/new_user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {

  final box = GetStorage('main');

  //GetStorage box = GetStorage('main');

  Future<StorageService> init() async {
    // //await GetStorage.init('main');
    // box = await GetStorage('main');
    return this;
  }

  Future<void> writeUserData(NewUser data) async {
    var jsonData = data.toJson();
    var stringData = jsonEncode(jsonData);
    await box.write('userData', stringData);
    print('writeUserData');
    print(stringData);
    readUserData();
  }

  NewUser? readUserData() {
    String? stringData = box.read<String>('userData');
    if (stringData == null) return null;
    Map<String, dynamic> jsonData = jsonDecode(stringData);
    NewUser data = NewUser.fromJson(jsonData);
    print('readUserData');
    print('hjdcbsj ${data}');
    return data;
  }

  //Future<NewUser> readUserData() => box.read('userData');
}
