import 'package:flutter/material.dart';
import 'package:retos_design/src/pages/reto3/second_page.dart';

class ProgresIndicator extends StatefulWidget {
  static final routerName = 'ProgresIndiator';
  @override
  _ProgresIndicatorState createState() => _ProgresIndicatorState();
}

class _ProgresIndicatorState extends State<ProgresIndicator>
    with TickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4200),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);

    Future.delayed(Duration(seconds: 4),
        () => Navigator.pushNamedAndRemoveUntil(
            context, SecondPage.routerName, (route) => false));

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _Indicator(controller: controller),
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  const _Indicator({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        SizedBox(
          height: 10.0,
        ),
        Text('Cargando...'),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: LinearProgressIndicator(
              value: controller.value,
              minHeight: 28.0,
              backgroundColor: Colors.blue[200],
            ),
          ),
        )
      ],
    );
  }
}
