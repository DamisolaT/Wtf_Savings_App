
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SignupRepository{
  var auth = FirebaseAuth.instance;
  Future<void> registerUser({required String email, required String password}) async{
    await auth.createUserWithEmailAndPassword(email: email, password: password);

  }
}