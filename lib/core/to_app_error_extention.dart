import 'package:firebase_auth/firebase_auth.dart';
import 'package:mal_learn/model/error.dart';

extension FirebaseAuthExceptionToAppError on FirebaseAuthException {
  AppError toAppError() {
    const appErrors = {
      'email-already-in-use': AppError.emailAlreadyInUse(),
      'invalid-email': AppError.invalidEmail(),
      'operation-not-allowed': AppError.operationNotAllowed(),
      'requires-recent-login': AppError.requiresRecentLogin(),
      'user-disabled': AppError.userDisabled(),
      'user-not-found': AppError.userNotFound(),
      'wrong-password': AppError.wrongPassword(),
      'weak-password': AppError.weakPassword(),
    };
    const defaultError = AppError.undefined();
    return appErrors[code] ?? defaultError;
  }
}

extension FirebaseExceptionToAppError on FirebaseException {
  AppError toAppError() {
    const appErrors = {
      //TODO: エラーを書く
      'email-already-in-use': AppError.emailAlreadyInUse(),
    };
    const defaultError = AppError.undefined();
    return appErrors[code] ?? defaultError;
  }
}
