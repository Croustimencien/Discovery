import 'package:flutter/material.dart';


var Port = 1;
var Oceanopolis = 2;
var Musee = 3;
var Capucins = 4;
var Tour = 5;
var telepherique = 6;
var recouvrance = 5;
var master = 7;
var jardinBotanique = 8;


class liste extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Port de Brest'),
                      Image.asset(
                        'assets/PortBrest.png',
                        width: 200.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Oceanopolis'),
                      Image.asset(
                        'assets/oceanopolis.png',
                        width: 200.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Musée de la Marine'),
                      Image.asset(
                        'assets/museeMarine.png',
                        width: 200.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Les Capucins'),
                      Image.asset(
                        'assets/capucins.png',
                        width: 200.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('La Tour Tanguy'),
                      Image.asset(
                        'assets/tourTangy.png',
                        width: 200.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('le telepherique'),
                      Image.asset(
                        'assets/telepherique.png',
                        width: 200.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Le pont de Recouvrance'),
                      Image.asset(
                        'assets/recouvrance.png',
                        width: 200.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Le Master'),
                      Image.asset(
                        'assets/bowling.png',
                        width: 200.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Le jardin botanique'),
                      Image.asset(
                        'assets/jardinBotanique.png',
                        width: 200.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}