import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Slider')),
        body: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(children: <Widget>[
              _crearSlider(),
              _checkBox(),
              _crearImagen()
            ])));
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      min: 0,
      max: 200,
      value: _valorSlider,
      onChanged: _bloquearCheck
          ? (valor) {
              setState(() {
                _valorSlider = valor;
              });
            }
          : null,
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Orange_lambda.svg/980px-Orange_lambda.svg.png'),
      height: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    /*return Checkbox(
      value: _bloquearCheck,
      onChanged: (val) {
        setState(() {
          _bloquearCheck = val;
        });
      },
    );*/
    return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (val) {
          setState(() {
            _bloquearCheck = val;
          });
        });
  }
}
