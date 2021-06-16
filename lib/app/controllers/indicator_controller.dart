import 'package:get/get.dart';
import 'package:retos_design/app/routes/app_pages.dart';

class ProgressIndicatorController extends GetxController {
  RxDouble progres = 0.0.obs;
  int duracion = 4;

  @override
  void onInit() {
    carga1();
    super.onInit();
  }

  Future<void> carga1() async {
    Future.delayed(Duration(seconds: duracion), () {
      progres.value = 0.3;
      carga2();
    });
  }

  Future<void> carga2() async {
    Future.delayed(Duration(seconds: duracion - 1), () {
      progres.value = 0.7;
      carga3();
    });
  }

  Future<void> carga3() async {
    Future.delayed(Duration(seconds: duracion - 2), () {
      progres.value = 0.99;
      Get.offNamed(Routes.SECONDPAGE);
    });
  }
}
