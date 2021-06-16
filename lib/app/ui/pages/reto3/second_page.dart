import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retos_design/app/controllers/second_page_controller.dart';
import 'package:retos_design/app/routes/app_pages.dart';

class SecondPage extends GetView<SecondPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        actions: [
          IconButton(
              icon: Icon(Icons.home_rounded),
              onPressed: () {
                Get.offNamed(Routes.HOME);
              }),
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Get.offNamedUntil(Routes.PROGRESINDICATOR, (route) => false);
              }),
        ],
      ),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}
