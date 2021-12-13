import 'package:flutter/material.dart';
import 'description.dart';




class liste extends StatelessWidget {
  var value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discovery',
        home: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text('Lieux proches de vous'),
            ),
            body:  SingleChildScrollView(
              child: Column(
                children: [

                  const SizedBox(
                    height: 50,
                  ),

                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/PortBrest.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child :Center(
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                          onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => description(value = 1)));
                        },
                          child: const Text("Port de Brest",
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/oceanopolis.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child :Center(
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => description(value= 2)));
                          },
                          child: const Text("Océanopolis",
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/museeMarine.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child :Center(
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => description(value= 3)));
                          },
                          child: const Text('Musée de la Marine',
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/capucins.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child :Center(
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => description(value=4)));
                          },
                          child: const Text('Les Capucins',
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/tourTangy.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child :Center(
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => description(value=5)));
                          },
                          child: const Text('La tour Tanguy',
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/telepherique.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child :Center(
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => description(value= 6)));
                          },
                          child: const Text('Le téléphérique',
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/recouvrance.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child :Center(
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => description(value= 7)));
                          },
                          child: const Text('Le pont de Recouvrance',
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/bowling.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child :Center(
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => description(value= 8)));
                          },
                          child: const Text('Le Master',
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/jardinBotanique.png'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child :Center(
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => description(value= 9)));
                          },
                          child: const Text('Le Jardin Botanique',
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}