import 'package:flutter/material.dart';
import 'package:game/core/colors.dart';

import 'package:get/get.dart';

import '../controllers/rooms_page_controller.dart';
import 'widgets/rooms_alert_dialog.dart';

class RoomsPageView extends GetView<RoomsPageController> {
  const RoomsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.firstPrimeryColor,
      appBar: AppBar(
        title: const Text(
          'Комнаты для игры',
          style: TextStyle(color: AppColors.firstPrimeryColor),
        ),
        centerTitle: true,
        backgroundColor: AppColors.secondPrimeryColor,
        actions: [
          IconButton(
              onPressed: () => controller.goToRegistration(),
              icon: const Icon(
                Icons.exit_to_app,
                color: AppColors.firstPrimeryColor,
              ))
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        color: AppColors.firstPrimeryColor,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () => controller.getSessions(),
              child: const Text("Get sessions")),
          Obx(() => Text(controller.sessions.toString())),
          const Center(
            child: Text(
              'Тут будудт доступные игры и их создание',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => RoomsAlertDialog(context, controller),
        backgroundColor: AppColors.secondPrimeryColor,
        child: const Icon(
          Icons.add,
          color: AppColors.firstPrimeryColor,
        ),
      ),
    );
  }
}
