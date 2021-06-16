import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retos_design/app/controllers/home_page_controller.dart';
import 'package:retos_design/app/routes/app_pages.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _containerFondo(),
          SingleChildScrollView(
              child: Column(
            children: [_headerText(), _botonesRedondeados()],
          )),
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    //Note: Minimo deben de haber dos elementos en cada TableRow,
    // y Table no permite ser un StateFull Por si solo, preferible
    //manejarlo como metodo.

    return Table(
      children: [
        TableRow(children: [
          _rutasCard(
            nameRouter: Routes.HELLOWPAGE,
            title: 'Hellow Page',
            color: Colors.blueAccent,
            icon: Icons.zoom_out_map,
          ),
          _rutasCard(
            nameRouter: Routes.CARDGRADIENTEPAGE,
            title: 'Gradiente Page',
            color: Colors.amberAccent,
            icon: Icons.api_rounded,
          ),
        ]),
        TableRow(children: [
          _rutasCard(
            nameRouter: Routes.CARDPAGE,
            title: 'Card Page',
            color: Colors.cyan,
            icon: CupertinoIcons.app_badge,
          ),
          _rutasCard(
            nameRouter: Routes.PROGRESINDICATOR,
            title: 'Progres Indicator Page',
            color: Colors.deepOrangeAccent,
            icon: CupertinoIcons.arrow_clockwise_circle,
          )
        ]),
        TableRow(children: [
          _rutasCard(
            nameRouter: Routes.PERFILPAGE,
            title: 'Perfil Page',
            color: Colors.green,
            icon: CupertinoIcons.person_alt_circle,
          ),
          _rutasCard(
            nameRouter: 'nada',
            title: 'Proximante...',
            color: Colors.black,
            icon: CupertinoIcons.person_alt_circle,
          ),
        ]),
      ],
    );
  }

  Container _containerFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.5),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );
  }
}

Padding _headerText() {
  return Padding(
    padding: const EdgeInsets.only(top: 40.0),
    child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          'Rutas a las paginas de diseños',
          style: TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300,
              color: Colors.white),
        )),
  );
}

GestureDetector _rutasCard(
    {String nameRouter, String title, Color color, IconData icon}) {
  return GestureDetector(
      onTap: () => Get.toNamed(nameRouter),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 180.0,
            margin: EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(66, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30.0,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(color: Colors.pinkAccent[100]),
                )
              ],
            ),
          ),
        ),
      ));
}
