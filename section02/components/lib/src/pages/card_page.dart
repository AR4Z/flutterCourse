import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ]));
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        child: Column(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.photo_album, color: Colors.blue),
                title: Text('Soy el título de esta tarjeta'),
                subtitle: Text('Descripción de la tarjeta')),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(onPressed: () {}, child: Text('Cancelar')),
                FlatButton(onPressed: () {}, child: Text('Ok'))
              ],
            )
          ],
        ));
  }

  Widget _cardTipo2() {
    final card = Container(
        child: Column(
      children: <Widget>[
        FadeInImage(
            image: NetworkImage(
                'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover),
        /*Image(
                image: NetworkImage(
                    'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg')
            ),*/
        Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner'))
      ],
    ));
    return Container(
        child:
            ClipRRect(child: card, borderRadius: BorderRadius.circular(30.0)),
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black26, blurRadius: 10.0, spreadRadius: 2.0, offset: Offset(2.0, 10.0))
        ], borderRadius: BorderRadius.circular(30.0), color: Colors.white));
  }
}
