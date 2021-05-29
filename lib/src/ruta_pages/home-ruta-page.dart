import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retos_design/src/pages/card_gradiente_page.dart';
import 'package:retos_design/src/pages/card_page.dart';
import 'package:retos_design/src/pages/hellow_page.dart';

class HomeRutaPage extends StatelessWidget {
  static final String routerName = 'homeRutaPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _ContainerFondo(),
          SingleChildScrollView(
              child: Column(
            children: [_HeaderText(), _botonesRedondeados()],
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
          _RutasCard(
            nameRouter: HellowPage.routerName,
            title: 'Hellow Page',
            color: Colors.blueAccent,
            icon: Icons.zoom_out_map,
          ),
          _RutasCard(
            nameRouter: CardGradientePage.routerName,
            title: 'Gradiente Page',
            color: Colors.amberAccent,
            icon: Icons.api_rounded,
          ),
        ]),
        TableRow(children: [
          _RutasCard(
            nameRouter: CardPage.routerName,
            title: 'Card Page',
            color: Colors.cyan,
            icon: CupertinoIcons.app_badge,
          ),
          _RutasCard(
            nameRouter: '',
            title: 'Proximamente...',
            color: Colors.deepPurpleAccent,
            icon: CupertinoIcons.archivebox,
          )
        ]),
      ],
    );
  }
}

class _ContainerFondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

class _HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}

class _RutasCard extends StatelessWidget {
  final String nameRouter;
  final String title;
  final Color color;
  final IconData icon;
  _RutasCard(
      {Key key,
      @required this.nameRouter,
      @required this.title,
      this.color = Colors.blue,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pushNamed(context, this.nameRouter),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Container(
              height: 180.0,
              margin: EdgeInsets.all(15.0),
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
                    this.title,
                    style: TextStyle(color: Colors.pinkAccent[100]),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
