import 'package:firebase_auth/firebase_auth.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/error.dart';
import 'package:mal_learn/model/result.dart';
import 'package:mal_learn/repository/auth_repository.dart';
import 'package:mal_learn/core/to_app_error_extention.dart';

class AuthRepositoryImplement implements AuthRepository {
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
