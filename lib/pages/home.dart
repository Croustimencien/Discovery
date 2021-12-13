import 'package:appflutter/pages/liste.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import './authen.dart';
import 'map.dart';
import 'liste.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  var uid = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Discovery',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          actions: <Widget>[
            const Text("Deconnexion",
            textAlign: TextAlign.center),
            IconButton(
                onPressed:(){
                  FirebaseAuth auth = FirebaseAuth.instance;
                  auth.signOut().then((res){
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => Authen()),
                        (Route<dynamic> route) => false);
                  });
                },
                icon: const Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                )
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  child: Image.asset(
                    'assets/LogoDiscovery.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                ),),
                const SizedBox(
                  height: 30,
                ),

                Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/jardinBotanique.png'), fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(250),
                  ),
                  height: 150,
                  child: Center(
                    child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => liste()));
                    },
                    child: const Text(" Liste des lieux intérresant au alentours ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                  ),),),),),

                const SizedBox(
                    height: 70,
                  ),

                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/map.png'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100),
                    ),
                  height: 150,
                  child: Center(
                    child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00c2cb))),
                        onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => map()));
                              },
                      child: const Text("C'est la Carte",
                      style: TextStyle(
                        fontSize: 25.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),)) ,),)
              ]
        ),
      ),
      )
    );
  }
}

//bleu 0xff00c2cb
//orange 0xffff914d
