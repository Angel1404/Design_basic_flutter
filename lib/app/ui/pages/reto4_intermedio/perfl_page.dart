import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:retos_design/app/controllers/perlfil_page_controller.dart';

class PerfilPage extends GetView<PerfilPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [_body()],
      )),
      bottomNavigationBar: _bottonNavigatorBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Column _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _text(),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: CircleAvatar(
            radius: 60.0,
            child: Text(
              'A',
              style: TextStyle(fontSize: 90.0),
            ),
          ),
        ),
        _text(
          contenido: 'Angel Carvajal',
        ),
        _text(
            contenido: 'AngelPalomino1404@gmail.com',
            opacity: true,
            padTop: 10.0,
            fontSize: 18.0),
        _contenido(),
        Padding(
          padding: const EdgeInsets.only(right: 30.0, left: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _button(
                  onPressed: () => print('Edit Profile'), text: 'Edit Profile'),
              _button(
                  onPressed: () => print('Settings'),
                  text: 'Settings',
                  colorB: Colors.white,
                  colorT: Colors.black,
                  opacity: true,
                  border: true),
            ],
          ),
        ),
        _card()
      ],
    );
  }

  Container _contenido() {
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 45.0),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              _text(
                  contenido: '300',
                  fontSize: 22,
                  color: Colors.blue,
                  padTop: 0),
              _text(
                  contenido: 'Reviews',
                  color: Colors.black,
                  padTop: 0,
                  opacity: true,
                  fontSize: 16)
            ],
          ),
          _divider(),
          Column(
            children: [
              _text(
                  contenido: '200',
                  fontSize: 22,
                  color: Colors.blue,
                  padTop: 0),
              _text(
                  contenido: 'Followers',
                  color: Colors.black,
                  padTop: 0,
                  opacity: true,
                  fontSize: 16)
            ],
          ),
          _divider(),
          Column(
            children: [
              _text(
                  contenido: '50', fontSize: 22, color: Colors.blue, padTop: 0),
              _text(
                  contenido: 'Following',
                  color: Colors.black,
                  padTop: 0,
                  opacity: true,
                  fontSize: 16)
            ],
          ),
        ],
      ),
    );
  }

  Container _divider() {
    return Container(
      height: 50.0,
      width: 2,
      color: Colors.blueGrey,
    );
  }

  Padding _text(
      {String contenido = 'My Profile',
      double fontSize = 25.0,
      double padTop = 40.0,
      bool opacity = false,
      Color color = Colors.black}) {
    return Padding(
      padding: EdgeInsets.only(top: padTop),
      child: Text(contenido,
          style: TextStyle(
              fontFamily: 'JosefinSans',
              fontSize: fontSize,
              color: opacity == true ? color.withOpacity(0.5) : color)),
    );
  }

  Container _button(
      {Function onPressed,
      String text = 'Presiona',
      Color colorB = Colors.blue,
      bool opacity = false,
      Color colorT = Colors.white,
      bool border = false}) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      width: 140,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: colorB,
            side: border == true ? BorderSide() : BorderSide.none,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Text(text,
            style: TextStyle(
                fontFamily: 'JosefinSans',
                fontSize: 18.0,
                color: opacity == true ? colorT.withOpacity(0.5) : colorT)),
      ),
    );
  }

  final String url2 =
      'https://www.kebuena.com.mx/wp-content/uploads/2020/06/Sin-ti%CC%81tulo-1-2.jpg';
  final String url3 =
      'https://www.soycarmin.com/__export/1591241280785/sites/debate/img/2020/06/03/avatar_3_crop1591241236156.jpg_1902800913.jpg';
  final String url4 =
      'https://m3t8r5s8.rocketcdn.me/wp-content/uploads/2020/08/Avatares-de-Facebook-invaden-los-canales-de-noticias-de-Sudafrica.jpg';

  Widget _card() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, right: 15.0, left: 15.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 380,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(10, 10),
                color: Colors.black45,
                blurRadius: 6,
              )
            ]),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 280.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://foodandtravel.mx/wp-content/uploads/2019/08/GaleraPlatillosfood.jpg',
                          ),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    top: 10,
                    right: 15,
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          _text(contenido: '4.2', padTop: 0, fontSize: 16.0),
                        ],
                      ),
                    ))
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                _text(
                  contenido: 'Variety of dishes',
                  padTop: 10.0,
                  //fontSize: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 12.0, right: 30.0, left: 20.0),
                  height: 35,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Colors.redAccent[300],
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.redAccent, Colors.amberAccent]),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                      child: _text(
                          contenido: 'Italian', padTop: 0, fontSize: 15.0)),
                ),
                _avatares(),
                _avatares(url: url2, color: Colors.teal[300]),
                _avatares(url: url3, color: Colors.deepOrange),
                _avatares(url: url4, color: Colors.amberAccent),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 40.0, right: 8.0),
                  child: Icon(
                    Icons.more_vert_outlined,
                    size: 30,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: _text(
                    contenido: '42 E 20th St New York 23 USA',
                    padTop: 0,
                    fontSize: 20.0,
                    opacity: true),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _avatares(
      {String url =
          'https://i.pinimg.com/236x/6d/5e/38/6d5e38d19bf4c0c9554b1e6beab75952.jpg',
      Color color = Colors.blue}) {
    return Align(
      widthFactor: 0.4,
      child: Container(
          margin: EdgeInsets.only(top: 10.0, left: 20.0),
          child: CircleAvatar(
            backgroundColor: color,
            radius: 20.0,
            backgroundImage: NetworkImage(url),
          )),
    );
  }

  _bottonNavigatorBar() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
              iconSize: 30,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              elevation: 5.0,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.accessibility_new_rounded), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.verified), label: ''),
              ]),
        ));
  }
}
