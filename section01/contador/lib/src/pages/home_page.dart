import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle mainTextStyle = new TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks:', style: this.mainTextStyle),
            Text('0', style: this.mainTextStyle)
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('hola'),
        child: Icon(Icons.add)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}