// @dart=2.9
import 'package:appflutter/pages/authen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:appflutter/pages/map.dart';
import './pages/profil.dart';
import './pages/home.dart';
import './pages/liste.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();

  runApp(MaterialApp(
      home:IntroScreen()));

}

class IntroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        navigateAfterSeconds: Home(),
        seconds: 5,
        title: const Text(
          "Discovery, l'appli qui te fais découvrir les alentours !",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('./assets/LogoDiscovery.png', fit: BoxFit.scaleDown),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: const TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.orange);
  }
  }
