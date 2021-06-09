import 'package:flutter/material.dart';
import 'package:retos_design/src/pages/reto3/progres_indicator.dart';

class SecondPage extends StatelessWidget {
  static final routerName = 'SecondPAge';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        actions: [
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
