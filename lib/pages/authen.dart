import 'package:flutter/material.dart';

class Authen extends StatelessWidget{
  const Authen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text('Authentication'),
            ),

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
            )
        )
    );
    }
}