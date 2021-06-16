import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardGradientePage extends StatelessWidget {
  static final routerName = 'cardGradientePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAEAEA),
      body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              children: [_CardGradiente(), _CardBody()],
            ),
          )),
    );
  }
}

class _CardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          _HeaderSwitch(),
          Divider(
            indent: 5,
            endIndent: 5,
          ),
          _Body()
        ],
      ),
    );
  }
}

class _CardGradiente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, boxContrins) {
      if (boxContrins.maxWidth < 800) {
        return _container(size, h: 0.30, w: double.infinity);
      } else {
        return _container(size, h: 0.60, w: size.width * 0.60);
      }
    });
  }

  Container _container(Size size, {double h, double w}) {
    return Container(
      height: size.height * h,
      width: w,
      margin: const EdgeInsets.all(10.0),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                margin: const EdgeInsets.only(left: 20),
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
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ToDeb(),
          _Linea(),
          _HorusSleep(),
          _Linea(),
          _WakeUp(),
        ]);
  }
}

class _WakeUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 30.0),
      child: Row(
        children: [
          _Imagen(imagen: 'assets/sol.png', h: 50.0, w: 60.0),
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
}

class _HorusSleep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, boxContrains) {
      if (boxContrains.maxWidth < 600) {
        return _padding(size, w: 0.36);
      } else {
        return _padding(size, w: 0.65);
      }
    });
  }

  Padding _padding(Size size, {double w}) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0, top: 2.0, bottom: 2.0),
      child: Row(
        children: [
          _Imagen(imagen: 'assets/sueño.png', h: 35.0, w: 50.0),
          SizedBox(
            width: 10,
          ),
          Text('8 hours sleep',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
              )),
          SizedBox(
            width: size.width * w,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
            size: 15,
          ),
        ],
      ),
    );
  }
}

class _ToDeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          _Imagen(imagen: 'assets/luna_media.png', h: 50.0, w: 60.0),
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
}

class _Imagen extends StatelessWidget {
  final String imagen;
  final double h;
  final double w;

  const _Imagen({Key key, this.imagen, this.h, this.w}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.h,
      width: this.w,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(this.imagen), fit: BoxFit.cover)),
    );
  }
}

class _Linea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 1,
      color: Colors.teal,
      margin: EdgeInsets.only(left: 30),
    );
  }
}

class _HeaderSwitch extends StatefulWidget {
  @override
  __HeaderSwitchState createState() => __HeaderSwitchState();
}

class __HeaderSwitchState extends State<_HeaderSwitch> {
  bool _valor = true;
  @override
  Widget build(BuildContext context) {
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
