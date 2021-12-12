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
              title: Text('Discovery'),
            ),
            body:  SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Port de Brest'),
                        new Image.asset(
                          'assets/PortBrest.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Oceanopolis'),
                        new Image.asset(
                          'assets/oceanopolis.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Musée de la Marine'),
                        new Image.asset(
                          'assets/museeMarine.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Les Capucins'),
                        new Image.asset(
                          'assets/capucins.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('La Tour Tanguy'),
                        new Image.asset(
                          'assets/tourTangy.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('le telepherique'),
                        new Image.asset(
                          'assets/telepherique.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Le pont de Recouvrance'),
                        new Image.asset(
                          'assets/recouvrance.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Le Master'),
                        new Image.asset(
                          'assets/bowling.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Le jardin botanique'),
                        new Image.asset(
                          'assets/jardinBotanique.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
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