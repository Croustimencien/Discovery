import 'package:flutter/material.dart';

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
<<<<<<< HEAD
        body: Center(
          child: (
        new Image.asset(
            'assets/PortBrest.png',
            width: 600.0,
            height: 400.0,
            fit: BoxFit.cover,)
          )
        )
      ),
    );
  }
=======

        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: const [
            Text('Veuillez vous connecter !', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            TextField(
              decoration: InputDecoration(
              hintText: "Votre Email"
              ),
            ),
            TextField(
            decoration: InputDecoration(
            hintText: "Mot de passe"
            )
          ),
        ]),

        )
      ));
    }
>>>>>>> 60ce877b08c3d652a4261d145ed63de5fa25e0c3
}