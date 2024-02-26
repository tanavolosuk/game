import 'package:dio/dio.dart';
import 'package:game/core/constans.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {

  Dio client = Dio(BaseOptions(baseUrl: Constants.baseUrl));
  
}