import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Components Temp'),
        ),
        body: ListView(children: this._createItemsShort()));
  }

  List<Widget> _createItemsShort() {
    return this.opciones.map(
            ( opt ) => Column(
              children: <Widget>[
                ListTile(
                    title: Text(opt),
                    subtitle: Text('Cualquier cosa'),
                    leading: Icon(Icons.account_balance_wallet),
                    trailing: Icon(Icons.arrow_right),
                    onTap: (){},
                ),
                Divider()
              ],
            )
    ).toList();
  }
}
