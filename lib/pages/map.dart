import 'package:flutter/material.dart';
import '../main.dart';

class map extends StatelessWidget {
  //map({@required this.title});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Discovery',
        home: Builder(
          builder: (context) => Scaffold(
          appBar: AppBar(
          title: Text('Discovery'),
          ),


          )
        )
      );
    }
  }
