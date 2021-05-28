import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  static final routerName = 'Cardpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [_cardDetalle(), _imagen()]),
        ),
      ),
    );
  }

  Positioned _imagen() {
    return Positioned(
      top: 140,
      left: 20,
      child: Container(
          height: 150,
          child: Image(
            image: NetworkImage(
                'https://i.pinimg.com/736x/6e/c4/c2/6ec4c2a66cf55deb60ef6bd5efc21ef4.jpg'),
            fit: BoxFit.fill,
            width: 110,
          )),
    );
  }

  Container _cardDetalle() {
    return Container(
      margin: EdgeInsets.all(5),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4), blurRadius: 4, color: Colors.black12)
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tarjeta'),
                IconButton(icon: Icon(Icons.menu), onPressed: () {})
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 30),
            child:
                Align(alignment: Alignment.centerLeft, child: Text('Welcome')),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 30),
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Text('Datos mas datos'),
                  Text('Datos mas datos'),
                  Text('Datos mas datos'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
