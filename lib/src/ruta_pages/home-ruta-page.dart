import 'dart:ui';

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
          _HeaderText(),
          _GridViewBody(),
        ],
      ),
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

class _GridViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.only(top: 50),
        primary: false,
        children: [
          _RutasCard(
            nameRouter: HellowPage.routerName,
            title: 'Hellow Page',
            color: Colors.amberAccent,
          ),
          _RutasCard(
            nameRouter: CardPage.routerName,
            title: 'Card',
            color: Colors.cyanAccent,
          ),
          _RutasCard(
            nameRouter: CardGradientePage.routerName,
            title: 'Card Gradiente',
            color: Colors.purpleAccent,
          ),
        ],
      ),
    );
  }
}

class _RutasCard extends StatelessWidget {
  final String nameRouter;
  final String title;
  final Color color;
  _RutasCard(
      {Key key,
      @required this.nameRouter,
      @required this.title,
      this.color = Colors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, this.nameRouter),
      child: Container(
        height: 180,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(-4, 4), blurRadius: 4, color: Colors.black12),
            BoxShadow(
                offset: Offset(4, 0), blurRadius: 4, color: Colors.black12)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              this.title,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }
}
