import 'package:get/get.dart';
import 'package:retos_design/app/controllers/second_page_controller.dart';

class SecondPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondPageController>(() => SecondPageController());
  }
}
