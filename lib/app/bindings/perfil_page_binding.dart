import 'package:get/get.dart';
import 'package:retos_design/app/controllers/perlfil_page_controller.dart';

class PerfilPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerfilPageController>(() => PerfilPageController());
  }
}
