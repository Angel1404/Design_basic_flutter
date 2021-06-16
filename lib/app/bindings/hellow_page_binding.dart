import 'package:get/get.dart';
import 'package:retos_design/app/controllers/hellow_page_controller.dart';

class HellowPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HellowPageController>(() => HellowPageController());
  }
}
