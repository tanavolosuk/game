import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rooms_page_controller.dart';

class RoomsPageView extends GetView<RoomsPageController> {
  const RoomsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RoomsPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RoomsPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
