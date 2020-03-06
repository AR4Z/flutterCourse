import 'package:flutter/material.dart';
import 'package:user_preferences/src/share_prefs/user.dart';
import 'package:user_preferences/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new UserPreferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User preferences'),
          backgroundColor: prefs.secondaryColor ? Colors.teal : Colors.blue,
        ),
        drawer: MenuWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Secondary color: ${ prefs.secondaryColor }'),
            Divider(),
            Text('Gender: ${ prefs.gender }'),
            Divider(),
            Text('User name: ${ prefs.userName }'),
            Divider(),
          ],
        ));
  }
}
