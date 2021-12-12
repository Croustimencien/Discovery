import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './authen.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/LogoDiscovery.png',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(" Discovery, l'appli qui te fais découvrir les alentours ! ",
                  style: TextStyle(
                    fontSize: 25.00,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffff914d),
                  ),),
                const SizedBox(
                    height: 50,
                  ),
                const Text("Idéal quand tu t'ennuies ou en vacances ! ",
                style: TextStyle(
                  fontSize: 15.00,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff00c2cb),
                ),)]
              
        ),
      ),
      )
    );
  }
}
