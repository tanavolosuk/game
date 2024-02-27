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
          const SizedBox(
            height: 32,
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.secondPrimeryColor,
                ),
                onPressed: () => controller.getSessions(),
                child: const Text(
                  "Get sessions",
                  style: TextStyle(color: AppColors.firstPrimeryColor),
                )),
          ),
          //Obx(() => Text(controller.sessions.toString())),
          const SizedBox(
            height: 32,
          ),
          Obx(() => ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.sessions.length,
              itemBuilder: (context, id) {
                var curSession = controller.sessions[id];
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        'Имя игры: ${curSession.name}',
                        style: const TextStyle(
                            color: AppColors.secondPrimeryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Имя хоста: ${curSession.host_name}',
                        style: const TextStyle(
                            color: AppColors.secondPrimeryColor, fontSize: 16),
                      ),
                      trailing: Text(
                        'Статус: ${curSession.game_state}',
                        style: const TextStyle(
                            color: AppColors.secondPrimeryColor, fontSize: 16),
                      ),
                    ),
                  ),
                );
              }))
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
