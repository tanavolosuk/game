import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Constants {
  static const baseUrl = 'https://ttt.bulbaman.me';
}

 void showSnack(String message, {isError = true}) {
    Get.showSnackbar(GetSnackBar(
      message: message,
      backgroundColor: isError ? Colors.red : Colors.green,
      duration: const Duration(seconds: 2),
    ));
  }