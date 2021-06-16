import 'package:get/get.dart';
import 'package:retos_design/app/controllers/card_page_controller.dart';

class CardPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CardPageController>(() => CardPageController());
  }
}
