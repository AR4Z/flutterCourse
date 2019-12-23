import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: this._lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
        initialData: [],
        future: menuProvider.cargarData(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          print(snapshot.data);
          return ListView(
              children: this._listaItems(snapshot.data, context)
          );
        }
    );
  }

  List<Widget>_listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opts = [];

    data.forEach((opt) {
      opts.add(ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
            /*final route = MaterialPageRoute(
              builder: ( context ) => AlertPage()
            );
            Navigator.push(context, route);*/
        }
      ));
    });
    return opts;
  }
}

