import 'package:firebase_auth/firebase_auth.dart';

import 'auth_remote_datasource.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;

  AuthRemoteDataSourceImpl({required this.firebaseAuth});

  @override
  Future<void> signIn(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signUp(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
