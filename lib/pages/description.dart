import 'package:flutter/material.dart';
import './liste.dart';

var type = 0;
class description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Discovery',
        home: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
            title: Text('Discovery'),
        ),
                body: SingleChildScrollView(
                    child: Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                if (type == 0)...[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('erreur'),
                                        new Image.asset(
                                          'assets/oceanopolis.png',
                                          width: 200.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),

                                ]  else if(type  == 1)...[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Port'),
                                        new Image.asset(
                                          'assets/oceanopolis.png',
                                          width: 200.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),
                                    ]  else if(type  == 2)...[
                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Oceanopolis'),
                                            new Image.asset(
                                              'assets/Oceanopolis.png',
                                              width: 200.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ),
                                ],
                              ],
                            )
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}




