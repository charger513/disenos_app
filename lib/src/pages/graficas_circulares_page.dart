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
      body: Center(
        child: Text('$porcentaje %'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            porcentaje += 10;
            if(porcentaje > 100) {
              porcentaje = 0;
            }
          });
        },
      ),
    );
  }
}
