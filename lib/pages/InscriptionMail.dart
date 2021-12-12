import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home.dart';

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
                    child: Text("Bienvenue ! "),
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
                    obscureText: true,
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