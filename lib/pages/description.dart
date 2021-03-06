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
                                      const Text("Le port de Brest est un port maritime fran??ais de commerce, de plaisance, de passagers et de p??che sur la Manche et l'Atlantique. "
                                        "Il est ??galement un port industriel gr??ce notamment ?? la r??paration navale, et le principal port militaire fran??ais de la fa??ade atlantique."))
                                    ]  else if(value  == 2)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/oceanopolis.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),

                                    ),
                                    child :Center(
                                        child: const Text("Oc??anopolis",
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
                                      const Text("Oc??anopolis est le Centre National de Culture Scientifique d??di?? ?? l'Oc??an, situ?? ?? Brest, pr??s du port de plaisance du Moulin Blanc."
                                          " La forme du premier b??timent, le pavillon temp??r??, rappelle celle d'un crabe."))
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
                                      const Text("Le mus??e national de la Marine de Brest est un mus??e maritime situ?? dans le ch??teau de Brest. "
                                          "Il abrite un patrimoine t??moignant de l'histoire de l'arsenal de Brest et de la Marine fran??aise."))
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
                                      const Text("Les Ateliers des Capucins sont des b??timents de l???Arsenal de Brest, en Bretagne, construits au XIX??? si??cle. "
                                          "R??troc??d??s ?? la Ville en 2009, ils sont reconvertis en centre culturel et commercial au sein du quartier des Capucins et desservis par le premier t??l??ph??rique urbain de France. "))
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
                                      const Text("La bastille de Quilbignon ou tour de la Motte-Tanguy est b??tie sur un tertre rocheux en bordure de la Penfeld, face au ch??teau de Brest, ?? Recouvrance. "
                                          "On y acc??de depuis la rue de la Porte par le square Pierre-P??ron, au pied du pont de Recouvrance. Cette tour du XIV??? si??cle, abrite le mus??e du vieux Brest."))
                                ]else if(value  == 6)...[
                                  Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/telepherique.png'), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child :Center(
                                        child: const Text("Le t??l??ph??rique",
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
                                      const Text("Le t??l??ph??rique de Brest ou ligne C du r??seau Bibus est un t??l??ph??rique urbain ??tabli entre les deux rives de la Penfeld, fleuve c??tier qui coule ?? Brest et qui s??pare les quartiers de Siam et des Capucins."))
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
                                      const Text("Le pont de Recouvrance est un pont levant qui franchit la Penfeld, ?? Brest, Finist??re. "
                                          "Dominant l'arsenal et le port militaire, il relie le bas de la rue de Siam au quartier de Recouvrance, en remplacement du pont tournant d??truit en 1944 par les bombardements alli??s."))
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
                                      const Text("Le master est le seul et unique bowling de Brest. R??cement remis au go??t du jour, on y retrouve un bar, les pistes de bowling, des tables de billars, des jeux de flechettes, un ??cran g??ant et plusieurs autres jeux d'arcade."))
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




