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
          child: (
        new Image.asset(
            'assets/PortBrest.png',
            width: 600.0,
            height: 400.0,
            fit: BoxFit.cover,)
          )
        )
      ),
    );
  }
}