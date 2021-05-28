import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardGradientePage extends StatefulWidget {
  static final routerName = 'cardGradientePage';

  @override
  _CardGradientePageState createState() => _CardGradientePageState();
}

class _CardGradientePageState extends State<CardGradientePage> {
  bool _valor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAEAEA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [_cardLinerarGradiente(), _cardBody()],
          ),
        )
      ),
    );
  }

  Container _cardLinerarGradiente() {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4), blurRadius: 4, color: Color(0xffA0A9A0))
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              //begin: Alignment(-1, 0.9),
              //end: Alignment(-1, -0.8),
              colors: [
                Color(0xFFD6F9FD),
                Color(0xFFFFDFDA),
                Color(0xFFFAACA2),
                Color(0xFFFFE28C),
              ],
              tileMode: TileMode.repeated)),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 20,
                  ),
                  onPressed: () {})),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'you did it! here \nyou can manager \nyour alarm, \nchange time and \nother things',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 120,
                width: 140,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/avion.png',
                  ),
                  fit: BoxFit.cover,
                )),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _cardBody() {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          _headerSwitch(),
          Divider(
            indent: 5,
            endIndent: 5,
          ),
          _body()
        ],
      ),
    );
  }

  Column _body() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _toDeb(),
          _linea(),
          _horusSleep(),
          _linea(),
          _wakeUp(),
        ]);
  }

  Padding _wakeUp() {
    return Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Row(
            children: [
              _imagen('assets/sol.png'),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Text(
                      '07:30',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'wake up',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }

  Padding _horusSleep() {
    return Padding(
          padding: const EdgeInsets.only(left: 6.0, top: 2.0, bottom: 2.0),
          child: Row(
            children: [
              _imagen('assets/sueño.png', h: 35.0, w: 50.0),
              SizedBox(width: 10,),
              Text('8 hours sleep',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  )),
                  SizedBox(width: 130,),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 15,
              )
            ],
          ),
        );
  }

  Padding _toDeb() {
    return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              _imagen('assets/luna_media.png'),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Text(
                      'to deb',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '23:30',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }

  Container _imagen(String imagen, {double h = 60, double w = 60}) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagen), fit: BoxFit.cover)),
    );
  }

  Container _linea() {
    return Container(
      height: 22,
      width: 1,
      color: Colors.teal,
      margin: EdgeInsets.only(left: 30),
    );
  }

  Row _headerSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Alarm',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        CupertinoSwitch(
            activeColor: Colors.black,
            value: _valor,
            onChanged: (value) {
              print(value);
              _valor = value;
              setState(() {});
            })
      ],
    );
  }
}
