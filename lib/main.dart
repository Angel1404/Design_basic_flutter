import 'package:flutter/material.dart';
import 'package:retos_design/src/pages/card_gradiente_page.dart';
import 'package:retos_design/src/pages/card_page.dart';

import 'package:retos_design/src/pages/hellow_page.dart';
import 'package:retos_design/src/ruta_pages/home-ruta-page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeRutaPage.routerName,
      routes: {
        HellowPage.routerName: (context) => HellowPage(),
        CardPage.routerName : (context) => CardPage(),
        CardGradientePage.routerName : (context) => CardGradientePage(),
        HomeRutaPage.routerName: (context) => HomeRutaPage(),
      },
    );
  }
}