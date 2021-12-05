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
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 140,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage())),
              )
            ],
          )

        ),
      ),
    );
  }
}
