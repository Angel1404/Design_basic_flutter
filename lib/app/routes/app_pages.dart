import 'package:get/get.dart';
import 'package:retos_design/app/bindings/card_gradiente_binding.dart';
import 'package:retos_design/app/bindings/card_page_binding.dart';
import 'package:retos_design/app/bindings/hellow_page_binding.dart';
import 'package:retos_design/app/bindings/home_page_binding.dart';
import 'package:retos_design/app/bindings/indicator_binding.dart';
import 'package:retos_design/app/bindings/perfil_page_binding.dart';
import 'package:retos_design/app/bindings/second_page_binding.dart';
import 'package:retos_design/app/ui/pages/pruebas/card_page.dart';
import 'package:retos_design/app/ui/pages/reto1/hellow_page.dart';
import 'package:retos_design/app/ui/pages/reto2/card_gradiente_page.dart';
import 'package:retos_design/app/ui/pages/reto3/progres_indicator.dart';
import 'package:retos_design/app/ui/pages/reto3/second_page.dart';
import 'package:retos_design/app/ui/pages/reto4_intermedio/perfl_page.dart';
import 'package:retos_design/app/ui/pages/ruta_pages/home-ruta-page.dart';
part 'app_router.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME, page: () => HomePage(), binding: HomePageBinding()),
    GetPage(
        name: Routes.HELLOWPAGE,
        page: () => HellowPage(),
        binding: HellowPageBinding()),
    GetPage(
        name: Routes.CARDGRADIENTEPAGE,
        page: () => CardGradientePage(),
        binding: CardGradientePageBinding()),
    GetPage(
        name: Routes.CARDPAGE,
        page: () => CardPage(),
        binding: CardPageBinding()),
    GetPage(
        name: Routes.PROGRESINDICATOR,
        page: () => ProgressIndicatorPage(),
        binding: ProgressIndicatorBinding()),
    GetPage(
        name: Routes.SECONDPAGE,
        page: () => SecondPage(),
        binding: SecondPageBinding()),
    GetPage(
      name: Routes.PERFILPAGE,
      page: () => PerfilPage(),
      binding: PerfilPageBinding(),
    )
  ];
}
