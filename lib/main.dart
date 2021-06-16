import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retos_design/app/bindings/home_page_binding.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    defaultTransition: Transition.fade,
    initialBinding: HomePageBinding(),
    getPages: AppPages.pages,
  ));
}
