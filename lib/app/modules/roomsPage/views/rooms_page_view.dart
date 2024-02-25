import 'package:flutter/material.dart';
import 'package:game/core/colors.dart';

import 'package:get/get.dart';

import '../controllers/rooms_page_controller.dart';

class RoomsPageView extends GetView<RoomsPageController> {
  const RoomsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Комнаты для игры', style: TextStyle(color: AppColors.firstPrimeryColor),),
        centerTitle: true,
        backgroundColor: AppColors.secondPrimeryColor,
        actions: [
          IconButton(onPressed: ()  => controller.goToRegistration(), icon: Icon(Icons.exit_to_app, color: AppColors.firstPrimeryColor,))
        ],
      ),
      body: const Center(
        child: Text(
          'Тут будудт доступные игры и их создание',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
