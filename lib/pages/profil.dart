import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Votre profil',
        home: Builder(
          builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text('Discovery'),
                backgroundColor: Colors.orange,
              ),
              body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            if (true)...[
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('if'),
                                    new Image.asset(
                                      'assets/oceanopolis.png',
                                      width: 200.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),

                            ] else ...[
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('else'),
                                    new Image.asset(
                                      'assets/oceanopolis.png',
                                      width: 200.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                            ],
                          ),
                      )
                      ]
                      )
                  )
                  )
        )
    );
  }
}
















