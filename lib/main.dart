// @dart=2.9
//import 'package:appflutter/pages/authen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:appflutter/pages/map.dart';
//import './pages/profil.dart';
import './pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();

  runApp(MaterialApp(
      home:MyMap()));

}

class IntroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        navigateAfterSeconds: Home(),
        seconds: 5,
        title: const Text(
          'Discovery',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('./assets/LogoDiscovery.png', fit: BoxFit.scaleDown),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: const TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.orange);
  }
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
                  builder: (context) => MyMap()));
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
}}
