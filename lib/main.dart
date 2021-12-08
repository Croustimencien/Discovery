import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './pages/home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();

  runApp(MyApp());
}




