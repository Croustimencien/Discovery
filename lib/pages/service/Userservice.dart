import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  FirebaseAuth _auth= FirebaseAuth.instance;

  Future<void> auth(UserModel userModel) async{
      print(userModel.toJson());)
  }
}