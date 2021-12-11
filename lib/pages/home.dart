import 'package:flutter/material.dart';
import './authen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Discovery',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Discovery'),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Image.asset(
                'assets/LogoDiscovery.png',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () => {Navigator.push(context,
                      MaterialPageRoute<void>(
                      builder:(BuildContext context) {
                      return Authen();
                      }))},
                      child: Column(
                        children: const [
                          Icon(Icons.login, size: 100, color: Colors.black,),
                          Text("Connexion")
                        ],
                      ),
                    ),

                    TextButton(
                    onPressed: () => {},
                      child: Column(
                        children: const [
                          Icon(Icons.logout, size: 100, color: Colors.black,),
                          Text("Déconnexion",)
                        ],
                      ),
                    )
                  ]
                ),
            Image.asset(
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
