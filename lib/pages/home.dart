import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discovery',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Discovery'),
        ),
        body: Center(
          child: Column(
            children: [
              new Image.asset(
                'assets/LogoDiscovery.png',
                width: 400.0,
                height: 400.0,
                fit: BoxFit.cover,
              ),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => {},
                          child: Column(
                            children: [
                              Icon(Icons.login),
                              Text("Connexion")
                            ],
                          ),
                        ),
                    TextButton(
                    onPressed: () => {},
                      child: Column(
                        children: [
                          Icon(Icons.logout),
                          Text("Connexion")
                        ],
                      ),
                    )
                  ]
                )
              )
          ]
        ),
      ),
    )
    );
  }
}
