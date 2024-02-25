import 'package:flutter/material.dart';
import 'package:game/core/colors.dart';

import 'package:get/get.dart';

import '../controllers/player_registration_page_controller.dart';

class PlayerRegistrationPageView
    extends GetView<PlayerRegistrationPageController> {
  const PlayerRegistrationPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.firstPrimeryColor,
        appBar: AppBar(
          backgroundColor: AppColors.secondPrimeryColor,
          title: const Text(
            'Регистрация игрока',
            style: TextStyle(color: AppColors.firstPrimeryColor),
          ),
          centerTitle: true,
        ),
        body: Container(
            child: Center(
                child: Container(
          width: 560,
          height: 320,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              const SizedBox(height: 32),
              const Text(
                'Добро пожаловать!',
                style: TextStyle(
                  color: AppColors.secondPrimeryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Text(
                'Введите ваш никнейм',
                style: TextStyle(
                  color: AppColors.secondPrimeryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 32),
              Container(
                width: 400,
                child: Column(
                  children: [
                    TextField(
                      controller: controller.nickNameController,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors
                                    .firstPrimeryColor)), //цвет когда нажимешь на поле
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                                color: AppColors
                                    .secondPrimeryColor)), //цвет постоянный
                        labelText: "Имя пользователя",
                        floatingLabelStyle: const TextStyle(
                            color: AppColors.secondPrimeryColor, fontSize: 16),
                      ),
                      style: const TextStyle(
                          color: AppColors.secondPrimeryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.firstPrimeryColor,
                  ),
                  onPressed: () => controller.signUp(),
                  child: const Text('Перейти к комнатам',
                      style: TextStyle(color: AppColors.secondPrimeryColor, fontSize: 16)))
            ],
          ),
        ))));
  }
}
