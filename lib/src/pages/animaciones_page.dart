import 'dart:math' as Math;

import 'package:flutter/material.dart';

class AnimacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> rotacion;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    rotacion = Tween(begin: 0.0, end: 2 * Math.pi).animate(controller);

    controller.addListener(() {
      print('Status: ${controller.status}');
      if(controller.status == AnimationStatus.completed) {
        controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget child) {
        return Transform.rotate(
          angle: rotacion.value,
          child: child,
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}
