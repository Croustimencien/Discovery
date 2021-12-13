import 'package:flutter/material.dart';
import './liste.dart';
import './home.dart';


class description extends StatelessWidget {
  int value;
  description(this.value);

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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),

                                if (value == 0)...[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('erreur'),
                                      ],
                                    ),
                                  ),

                                ]  else if(value  == 1)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/PortBrest.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                          child: const Text("Port de Brest",
                                            style: TextStyle(
                                              fontSize: 25.00,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )
                                      ),
                                    ),
                                    ]  else if(value  == 2)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/oceanopolis.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                        child: const Text("Océanopolis",
                                          style: TextStyle(
                                            fontSize: 25.00,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                  ),
                                ]else if(value  == 3)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/museeMarine.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                        child: const Text("Musee de la Marine",
                                          style: TextStyle(
                                            fontSize: 25.00,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                  ),
                              ]else if(value  == 4)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/capucins.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                        child: const Text("Les capucins",
                                          style: TextStyle(
                                            fontSize: 25.00,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                  ),
                                ]else if(value  == 5)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/tourTangy.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                        child: const Text("La tour tanguy",
                                          style: TextStyle(
                                            fontSize: 25.00,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                  ),
                                ]else if(value  == 6)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/telepherique.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                        child: const Text("Le téléphérique",
                                          style: TextStyle(
                                            fontSize: 25.00,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                  ),
                                ]else if(value  == 7)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/recouvrance.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                        child: const Text("Le pont de Recouvrance",
                                          style: TextStyle(
                                            fontSize: 25.00,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                  ),
                                ]else if(value  == 8)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/bowling.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                        child: const Text("Le Master",
                                          style: TextStyle(
                                            fontSize: 25.00,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                  ),
                                ]else if(value  == 9)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/jardinBotanique.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                        child: const Text("Le jardin botanique",
                                          style: TextStyle(
                                            fontSize: 25.00,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                  ),
                                ]
                            ]
                            )
                          ),
                        ]
                    )
                ),
            bottomNavigationBar: BottomAppBar(

                child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Home()));
                  },
                    child: const Text("Home",
                      style: TextStyle(
                        fontSize: 25.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                ),
              ),
            ),
        )
    );
  }
}




