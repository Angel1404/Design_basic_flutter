import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retos_design/app/controllers/indicator_controller.dart';

class ProgressIndicatorPage extends GetView<ProgressIndicatorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ProgresIndicatorPage')),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 10.0,
            ),
            Text('Cargando...'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Obx(() => LinearProgressIndicator(
                      value: controller.progres.value,
                      minHeight: 28.0,
                      backgroundColor: Colors.blue[200],
                    )),
              ),
            )
          ],
        )));
  }
}
