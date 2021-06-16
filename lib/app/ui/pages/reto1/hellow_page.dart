import 'package:flutter/material.dart';

class HellowPage extends StatelessWidget {
  static final routerName = 'hellowPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(child: _Body()),
        ),
      ),
    );
  }
}

class _BotonesNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: Image(image: AssetImage('assets/facebook.png')),
            iconSize: 45,
            onPressed: () {}),
        IconButton(
            icon: Image(image: AssetImage('assets/buscar.png')),
            iconSize: 45,
            onPressed: () {}),
        IconButton(
            icon: Image(image: AssetImage('assets/github.png')),
            iconSize: 45,
            onPressed: () {}),
      ],
    );
  }
}

class _Botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, boxContrains) {
      if (boxContrains.maxWidth < 600) {
        print("Box : ${boxContrains.maxWidth}");
        return _row(size, h: 0.075 ,w: 0.40);
      } else {
        return _row(size,h: 0.15,w:  0.25 );
      }
    });
  }

  Row _row(Size size,{double h, double w}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height * h,
            width: size.width * w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.blueAccent[700],
                ),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: size.height * h,
            width: size.width * w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Colors.white,
                    side: BorderSide(style: BorderStyle.solid, width: 2)),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          )
        ],
      );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, boxContarins) {
      if(boxContarins.maxWidth < 600){

        return _column(size,h: 0.45, w: double.infinity);
      }else{
        return _column(size,h: 0.60, w:  0.60);
      }
    });
  }

  Column _column(Size size, {double h, double w}) {
    return Column(
    children: [
      Container(
          height: size.height * h,
          width: size.width * w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/login_image.png'),
                  fit: BoxFit.cover))),
      Text(
        'Hola!',
        style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic),
      ),
      SizedBox(height: 10.0),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Bienvenido'
          '\n'
          'Decide con que cuenta inicias seccion en nuestra plataforma o ¡Registrate!',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      _Botones(),
      SizedBox(
        height: 30,
      ),
      Text(
        'O con una  red social',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontStyle: FontStyle.italic),
      ),
      SizedBox(
        height: 10,
      ),
      _BotonesNav()
    ],
  );
  }


}
