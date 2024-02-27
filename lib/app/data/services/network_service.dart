import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:game/app/data/models/newuser/new_user.dart';
import 'package:game/app/data/models/session/session.dart';
import 'package:game/app/data/services/storage_service.dart';
import 'package:game/core/constans.dart';
import 'package:get/get.dart';

class NetService extends GetxService {
  Dio client = Dio(BaseOptions(baseUrl: Constants.baseUrl));

  final private_key = "".obs;

  var storageService = Get.find<StorageService>();

  Future<bool> writeSession(String sessionname) async {
    //функция чтобы создать новую игру
    try {
      var response = await client.post('/session/create/$sessionname',
          options: Options(headers: {'authorization': private_key.value}));
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> registration(String username) async {
    //функция чтобы добавить игрока
    try {
      var response = await client.post('/user/add/$username');

      //print(response);
      var user = NewUser.fromJson(response.data);
      private_key.value = user.key; //сохраняем его пароль
      print(private_key.value);
      storageService.savekey(private_key.value);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<Session> getSession(String id) async {
    //получаем конкретную сессию
    try {
      var response = await client.get('/session/get/$id');
      var session = Session.fromJson(response.data);

      return session;
    } catch (e) {
      print("GET SESSION ERROR");
      throw 'ERROR';
    }
  }

  Future<List<Session>> getSessions() async {
    //получаем список сессий
    try {
      var response = await client.get('/session/get');
      List<dynamic> sessionIds = response.data;
      List<Session> result = [];
      for (var sessionId in sessionIds) {
        var s = await getSession(sessionId);
        result.add(s);
      }
      return result;
    } catch (e) {
      print(e);
      print("GET SESSIONS ERROR");
      return [];
    }
  }
}
