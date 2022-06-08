import 'package:flutter/material.dart';

class PracticaVista extends StatefulWidget {
  PracticaVista({Key? key}) : super(key: key);

  @override
  State<PracticaVista> createState() => _PracticaVistaState();
}

class _PracticaVistaState extends State<PracticaVista> {
  int pages = 0;
  String letra1 = 'A';
  String letra2 = 'B';
  String letra3 = 'C';
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color color3 = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          color: Colors.white,
          child: SizedBox(
            width: double.infinity,
            child: Column(children: [
              Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: double.infinity,
                    color: color1,
                    child: Text(letra1)),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: double.infinity,
                    color: color2,
                    child: Text(letra2)),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  color: color3,
                  child: Text(letra3),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    children: [
                      _buttonBoarding(45, 300, "Siguiente"),
                    ],
                  ),
                ),
              ),
            ]),
          )),
    ));
  }

  _buttonBoarding(double _height, double _width, String text) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
          side: const BorderSide(
            color: Colors.amber,
            width: 1.5,
          ),
        ),
        minimumSize: Size(_width, _height),
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.all(0));
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: TextButton(
        style: flatButtonStyle,
        onPressed: () {
          setState(() {
            pages += 1;
            if (pages > 3) {
              pages = 0;
            }
            switch (pages) {
              case 1:
                letra1 = 'C';
                letra2 = 'A';
                letra3 = 'B';
                color1 = Colors.yellow;
                color2 = Colors.red;
                color3 = Colors.blue;
                break;
              case 2:
                letra1 = 'B';
                letra2 = 'C';
                letra3 = 'A';
                color1 = Colors.blue;
                color2 = Colors.yellow;
                color3 = Colors.red;
                break;
              case 3:
                letra1 = 'A';
                letra2 = 'B';
                letra3 = 'C';
                color1 = Colors.red;
                color2 = Colors.blue;
                color3 = Colors.yellow;
                break;
              default:
            }
          });
        },
        child: Text(
          1 == 4 ? "Continuar" : "Siguiente",
          style: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}
