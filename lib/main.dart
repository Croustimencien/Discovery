import 'package:appflutter/pages/authen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();
  runApp(const MaterialApp(
      home:Authen()));

}

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  FirebaseAuth auth = FirebaseAuth.instance;

  User? result = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        navigateAfterSeconds: result != null ? Home(uid: result.uid) : const Authen(),
        seconds: 5,
        title: const Text(
          'Discovery',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('assets/images/LogoDiscovery.png', fit: BoxFit.scaleDown),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: const TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.orange);
  }
}
