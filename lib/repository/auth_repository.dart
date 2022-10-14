import 'package:firebase_auth/firebase_auth.dart';
import 'package:mal_learn/model/result.dart';

abstract class AuthRepository {
  Future<Result<User>> signIn(
    FirebaseAuth firebaseAuth,
    String email,
    String password,
  );
}
