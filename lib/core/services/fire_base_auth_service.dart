

import 'package:firebase_auth/firebase_auth.dart';
import 'package:lastfruitapp/core/errors/exceptions.dart';

class FireBaseAuthService{
  Future<User> createUserWithEmailAndPassword ({required String email,required String password
}) async {

    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
       throw CustomException(message: 'the pass is too weak ');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'acc already exists');
      }
      else{
        throw CustomException(message: 'try later');
      }
    } catch (e) {
      throw CustomException(message: 'try later');
    }
  }
}