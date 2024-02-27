 import 'package:flutter/material.dart';
import 'package:game/app/modules/roomsPage/controllers/rooms_page_controller.dart';
import 'package:game/core/colors.dart';

Future<dynamic> RoomsAlertDialog(BuildContext context, RoomsPageController controller) {
    return showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: AppColors.firstPrimeryColor,
                scrollable: true,
                title: const Text(
                  'Создать свою игру',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: AppColors.secondPrimeryColor,
                      fontWeight: FontWeight.bold),
                ),
                content: SizedBox(
                  height: 64,
                  width: 400,
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: controller.sessionNameController,
                          style: const TextStyle(fontSize: 16),
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
                            labelText: "Имя сессии",
                            floatingLabelStyle: const TextStyle(
                                color: AppColors.secondPrimeryColor,
                                fontSize: 16),
                            icon: const Icon(Icons.border_color_outlined,
                                color: AppColors.secondPrimeryColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Отмена',
                          style: TextStyle(
                              color: AppColors.secondPrimeryColor,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Создать',
                            style: TextStyle(
                                color: AppColors.secondPrimeryColor,
                                fontSize: 16)),
                      ),
                    ],
                  ),
                ],
              );
            });
  }
