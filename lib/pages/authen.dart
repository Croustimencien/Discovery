import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './inscriptionmail.dart';
import './home.dart';

class Authen extends StatelessWidget{

  final _formKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override

  Widget build(BuildContext context) {
    void logInToFb() {
      firebaseAuth
          .signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text)
          .then((result) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      }).catchError((err) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Erreur..."),
                content: Text(err.message),
                actions: [
                  TextButton(
                    child: const Text("Bienvenue !"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Authentication'),
        ),


        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ElevatedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InscriMail()),
                    );
                  }, child: Text ("Inscription via Email"),
                  ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  logInToFb();
                }
              },
              child: Text('Se connecter'),
            ),
            ]))));

    }
}
