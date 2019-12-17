import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _mainTextStyle = new TextStyle(fontSize: 25);
  int _conteo = 0;

  void _agregar() {
    _conteo++;
  }

  void _reset() {
    _conteo = 0;
  }

  void _sustraer() {
    _conteo--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App bar'),
          centerTitle: true,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Número de clicks:', style: this._mainTextStyle),
          Text('$_conteo', style: this._mainTextStyle)
        ])),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                this._reset();
              });
            },
            child: Icon(Icons.exposure_zero)),
        Expanded(
            child: SizedBox(
          width: 5.0,
        )),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                this._sustraer();
              });
            },
            child: Icon(Icons.remove)),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                this._agregar();
              });
            },
            child: Icon(Icons.add))
      ],
    );
  }
}
