import '/src/services/logger/logger.dart';
import '/src/services/service_locator/locator.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Register a new user with email and password
  Future<UserCredential?> register(String email, String password) async {
    UserCredential userCredential;
    locator<Log>().info('email $email, password $password');

    try {
      userCredential = await _auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .onError((error, stackTrace) {
        locator<Log>().fatal(error.toString());
        locator<Log>().fatal(stackTrace.toString());
        throw Exception(error.toString());
      });
      locator<Log>().info('User created $userCredential');
      // print(userCredential);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        //   print('The password provided is too weak.');
        throw Exception('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        //  print('The account already exists for that email.');
        throw Exception('The account already exists for that email.');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // Login with email and password
  Future<UserCredential?> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      rethrow;
    }
  }

  //deleteAccount
  Future<void> deleteAccount() async {
    try {
      await _auth.currentUser!.delete();
    } catch (e) {
      rethrow;
    }
  }

  // Logout
  Future<void> logout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      rethrow;
    }
  }
}
