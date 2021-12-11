import 'package:flutter/material.dart';
import './authen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discovery',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Discovery'),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              new Image.asset(
                'assets/LogoDiscovery.png',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () => {
                          Navigator.push(context,MaterialPageRoute<void>(builder:(BuildContext context){
                            return Authen();
                            }
                          )),
                          },
                          child: Column(
                            children: [
                              Icon(Icons.login, size: 100, color: Colors.black,),
                              Text("Connexion")
                            ],
                          ),
                        ),

                        TextButton(
                        onPressed: () => {},
                          child: Column(
                            children: [
                              Icon(Icons.logout, size: 100, color: Colors.black,),
                              Text("Déconnexion",)
                            ],
                          ),
                        )
                      ]
                )
              ),
            new Image.asset(
              'assets/PortBrest.png',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,
            ),
          ]
        ),
      ),
    )
    );
  }
}
