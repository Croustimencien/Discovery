import 'package:flutter/material.dart';

class Authen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discovery',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Discovery'),
        ),
        body: Center(
          child: Column(
            children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                hintText: "Veuillez-vous connecter !"
                ),
              ),
            )],
          ),
        ),
      ),
    );
  }
}