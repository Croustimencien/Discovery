import 'package:flutter/material.dart';
import './liste.dart';
import './home.dart';


class description extends StatelessWidget {
  int value;
  description(this.value);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Discovery',
        home: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
            title: Text('Discovery'),
              backgroundColor: Colors.orange,
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
                                    child :const Center(
                                          child: Text("Port de Brest",
                                            style: TextStyle(
                                              fontSize: 25.00,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Padding(
                                    padding: const EdgeInsets.all(20.00),
                                    child:
                                      const Text("Le port de Brest est un port maritime français de commerce, de plaisance, de passagers et de pêche sur la Manche et l'Atlantique. "
                                        "Il est également un port industriel grâce notamment à la réparation navale, et le principal port militaire français de la façade atlantique."))
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
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(20.00),
                                      child:
                                      const Text("Océanopolis est le Centre National de Culture Scientifique dédié à l'Océan, situé à Brest, près du port de plaisance du Moulin Blanc."
                                          " La forme du premier bâtiment, le pavillon tempéré, rappelle celle d'un crabe."))
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
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(20.00),
                                      child:
                                      const Text("Le musée national de la Marine de Brest est un musée maritime situé dans le château de Brest. "
                                          "Il abrite un patrimoine témoignant de l'histoire de l'arsenal de Brest et de la Marine française."))
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
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(20.00),
                                      child:
                                      const Text("Les Ateliers des Capucins sont des bâtiments de l’Arsenal de Brest, en Bretagne, construits au XIXᵉ siècle. "
                                          "Rétrocédés à la Ville en 2009, ils sont reconvertis en centre culturel et commercial au sein du quartier des Capucins et desservis par le premier téléphérique urbain de France. "))
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
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(20.00),
                                      child:
                                      const Text("La bastille de Quilbignon ou tour de la Motte-Tanguy est bâtie sur un tertre rocheux en bordure de la Penfeld, face au château de Brest, à Recouvrance. "
                                          "On y accède depuis la rue de la Porte par le square Pierre-Péron, au pied du pont de Recouvrance. Cette tour du XIVᵉ siècle, abrite le musée du vieux Brest."))
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
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(20.00),
                                      child:
                                      const Text("Le téléphérique de Brest ou ligne C du réseau Bibus est un téléphérique urbain établi entre les deux rives de la Penfeld, fleuve côtier qui coule à Brest et qui sépare les quartiers de Siam et des Capucins."))
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
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(20.00),
                                      child:
                                      const Text("Le pont de Recouvrance est un pont levant qui franchit la Penfeld, à Brest, Finistère. "
                                          "Dominant l'arsenal et le port militaire, il relie le bas de la rue de Siam au quartier de Recouvrance, en remplacement du pont tournant détruit en 1944 par les bombardements alliés."))
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
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(20.00),
                                      child:
                                      const Text("Le master est le seul et unique bowling de Brest. Récement remis au goût du jour, on y retrouve un bar, les pistes de bowling, des tables de billars, des jeux de flechettes, un écran géant et plusieurs autres jeux d'arcade."))
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
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(20.00),
                                      child:
                                      const Text("Le jardin botanique se situe au centre du vallon du stang-alar. Entretenu par la mairie et le CBN (Conservatoire botanique national). Cela reste l'un des endroits les plus verdoyants de brest."))
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




