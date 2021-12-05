import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discovery',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Discovery'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
