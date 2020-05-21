import 'package:disenos_app/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class GraficasCircularesPage extends StatefulWidget {
  @override
  _GraficasCircularesPageState createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  double porcentaje = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            porcentaje += 10;
            if (porcentaje > 100) {
              porcentaje = 0;
            }
          });
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomRadialProgress(
                porcentaje: porcentaje,
                color: Colors.blue,
              ),
              CustomRadialProgress(
                porcentaje: porcentaje,
                color: Colors.red,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomRadialProgress(
                porcentaje: porcentaje,
                color: Colors.black,
              ),
              CustomRadialProgress(
                porcentaje: porcentaje,
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomRadialProgress extends StatelessWidget {
  const CustomRadialProgress({
    @required this.porcentaje,
    this.color,
  });

  final double porcentaje;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: RadialProgress(
        porcentaje: porcentaje,
        colorPrimario: color,
        colorSecundario: Colors.grey,
        grosorSecundario: 10,
        grosorPrimario: 10,
      ),
    );
  }
}
