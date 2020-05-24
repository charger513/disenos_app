import 'package:disenos_app/src/widgets/boton_gordo.dart';
import 'package:disenos_app/src/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton(this.icon, this.texto, this.color1, this.color2);
}

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = <ItemBoton>[
      new ItemBoton(
        FontAwesomeIcons.carCrash,
        'Motor Accident',
        Color(0xff6989F5),
        Color(0xff906EF5),
      ),
      new ItemBoton(
        FontAwesomeIcons.plus,
        'Medical Emergency',
        Color(0xff66A9F2),
        Color(0xff536CF6),
      ),
      new ItemBoton(
        FontAwesomeIcons.theaterMasks,
        'Theft / Harrasement',
        Color(0xffF2D572),
        Color(0xffE06AA3),
      ),
      new ItemBoton(
        FontAwesomeIcons.biking,
        'Awards',
        Color(0xff317183),
        Color(0xff46997D),
      ),
      new ItemBoton(
        FontAwesomeIcons.carCrash,
        'Motor Accident',
        Color(0xff6989F5),
        Color(0xff906EF5),
      ),
      new ItemBoton(
        FontAwesomeIcons.plus,
        'Medical Emergency',
        Color(0xff66A9F2),
        Color(0xff536CF6),
      ),
      new ItemBoton(
        FontAwesomeIcons.theaterMasks,
        'Theft / Harrasement',
        Color(0xffF2D572),
        Color(0xffE06AA3),
      ),
      new ItemBoton(
        FontAwesomeIcons.biking,
        'Awards',
        Color(0xff317183),
        Color(0xff46997D),
      ),
      new ItemBoton(
        FontAwesomeIcons.carCrash,
        'Motor Accident',
        Color(0xff6989F5),
        Color(0xff906EF5),
      ),
      new ItemBoton(
        FontAwesomeIcons.plus,
        'Medical Emergency',
        Color(0xff66A9F2),
        Color(0xff536CF6),
      ),
      new ItemBoton(
        FontAwesomeIcons.theaterMasks,
        'Theft / Harrasement',
        Color(0xffF2D572),
        Color(0xffE06AA3),
      ),
      new ItemBoton(
        FontAwesomeIcons.biking,
        'Awards',
        Color(0xff317183),
        Color(0xff46997D),
      ),
    ];

    List<Widget> itemMap = items
        .map((item) => BotonGordo(
              icon: item.icon,
              texto: item.texto,
              color1: item.color1,
              color2: item.color2,
              onPressed: () {
                print('Hola');
              },
            ))
        .toList();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 200),
            child: ListView(
              children: <Widget>[SizedBox(height: 80), ...itemMap],
            ),
          ),
          IconHeader(
            icon: FontAwesomeIcons.plus,
            titulo: 'Asistencia Médica',
            subtitulo: 'Has solicitado',
          )
        ],
      ),
    );
  }
}

class BotonGordoTemp extends StatelessWidget {
  const BotonGordoTemp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotonGordo(
      icon: FontAwesomeIcons.carCrash,
      texto: 'Motor Accident',
      onPressed: () {
        print('Tap');
      },
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      titulo: 'Asistencia Médica',
      subtitulo: 'Has solicitado',
    );
  }
}
