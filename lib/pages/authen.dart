import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import './home.dart';

class Authen extends StatelessWidget{

  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Authentication'),
        ),
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ElevatedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InscriMail()),
                    );
                  }, child: Text ("Inscription via Email"),
                  ),
                ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => formLogin()),
                  );
                }, child: Text ("Se connecter"),
                ),
            ]))),
      );
    }
}

class formLogin extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void logInToFb() {
      firebaseAuth
          .signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text)
          .then((result) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      }).catchError((err) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Erreur. Email ou mot de passe incorrect"),
                content: Text(err.message),
                actions: [
                  TextButton(
                    child: const Text("D'accord !"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
      });
    }
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
                labelText: "Email",
              ),
              controller : emailController,
            ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Mot de passe",
                  labelText: 'Mot de passe',
                ),
                controller : passwordController,
                obscureText: true,
              ),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    logInToFb();
                  }
                },
                child: Text('Se connecter'),
              ),],
          ))));
  }
  
}


class InscriMail extends StatelessWidget{

  final _formKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  DatabaseReference dbRef = FirebaseDatabase.instance.ref("Users");
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var uid = FirebaseAuth.instance.currentUser;

  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }



  @override

  Widget build(BuildContext context) {
    void registerToFb() {
      firebaseAuth
          .createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text)
          .then((result) {
        dbRef.child(result.user!.uid).set({
          "email": emailController.text,
          "name": nameController.text
        }).then((res) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
        });
      }).catchError((err) {
        showDialog(
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Erreur ..."),
                content: Text(err.message),
                actions: [
                  TextButton(
                    child: Text("D'accord ! "),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            }, context: context);
      });
    }
    return Form(
        key: _formKey,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.00),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        labelText: "Entrez votre nom d'utilisateur",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return "Entrez votre nom d'utilisateur";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.00),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: "Entrez votre Email",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return "Veuillez entrer votre Email";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.00),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        labelText: "Entrez un mot de passe",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return "Veuillez entrer un mot de passe";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      registerToFb();
                    }
                  },
                  child: Text('Se connecter'),
                ),
              ],
            ),
          ),
        )
    );
  }
}

