import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import './InscriptionMail.dart';

class Authen extends StatelessWidget{
  const Authen({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {

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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SignInButton(Buttons.Email,
                  text: "Inscription via Email",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InscriMail()),
                    );
                  },
                )),
            const Text('Veuillez vous connecter !', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            const TextField(
              decoration: InputDecoration(
              hintText: "Votre Email"
              ),
            ),
            const TextField(
            decoration: InputDecoration(
            hintText: "Mot de passe"
            )
          ),
        ]),

        )
      ));
    }
}