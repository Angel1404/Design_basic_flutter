import 'package:get/get.dart';
import 'package:retos_design/app/controllers/indicator_controller.dart';

class ProgressIndicatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgressIndicatorController>(
        () => ProgressIndicatorController());
  }
}
