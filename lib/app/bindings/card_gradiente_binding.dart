import 'package:get/get.dart';
import 'package:retos_design/app/controllers/card_gradiente_controller.dart';

class CardGradientePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CardGradientePageController>(
        () => CardGradientePageController());
  }
}
