import 'package:appflutter/pages/map.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './pages/profil.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();
  runApp(test());
}


class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Discovery',
        home: Builder(
          builder: (context) => Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => map()));
            },),
            appBar: AppBar(
              title: Text('test'),
            ),
              body:  SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            child: Row(
                              children: [


                              ]
                            )
                        )
                      ]
                  )
              )
          )
        )
    );
  }
}
