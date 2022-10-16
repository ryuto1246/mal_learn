import 'package:firebase_auth/firebase_auth.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/error.dart';
import 'package:mal_learn/model/result.dart';
import 'package:mal_learn/core/to_app_error_extention.dart';

abstract class AuthRepository {
  Future<Result<User>> signUp(FirebaseAuth auth, String email, String password,
      DateTime birthDay, String userName);

  Future<Result<User>> signIn(
    FirebaseAuth auth,
    String email,
    String password,
  );
}

class AuthRepositoryImplement implements AuthRepository {
  @override
  Future<Result<User>> signUp(
    FirebaseAuth auth,
    String email,
    String password,
    DateTime birthDay,
    String userName,
  ) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user;

      if (user == null) {
        logger.e('Failed to create User.');
        return Result.failure(const AppError.undefined());
      }

      logger.d('User successfully created. $user');
      return Result.success(user);
    } on FirebaseAuthException catch (e) {
      logger.e('Failed to create user: $e');
      return Result.failure(e.toAppError());
    }
  }

  @override
  Future<Result<User>> signIn(
    FirebaseAuth auth,
    String email,
    String password,
  ) async {
    try {
      //credential means 資格証明
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user;

      if (user == null) {
        logger.e('Failed to sign in User.');
        return Result.failure(const AppError.undefined());
      }

      logger.d('User successfully sign in. $user');
      return Result.success(user);
    } on FirebaseAuthException catch (e) {
      logger.e('Failed to sign in User: $e');
      return Result.failure(e.toAppError());
    }
  }
}
