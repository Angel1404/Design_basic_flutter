import 'package:flutter/material.dart';
import 'package:retos_design/src/pages/reto3/progres_indicator.dart';
import 'package:retos_design/src/ruta_pages/home-ruta-page.dart';

class SecondPage extends StatelessWidget {
  static final routerName = 'SecondPAge';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        actions: [
          IconButton(
              icon: Icon(Icons.home_rounded),
              onPressed: () {
                Navigator.pushNamed(context, HomeRutaPage.routerName);
              }),
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, ProgresIndicator.routerName, (route) => false);
              }),
        ],
      ),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}
