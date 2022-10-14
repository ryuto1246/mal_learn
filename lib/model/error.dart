import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class AppError with _$AppError {
  //Firebase Auth
  const factory AppError.emailAlreadyInUse() = _EmailAleadyInUse;
  const factory AppError.invalidEmail() = _InvalidEmail;
  const factory AppError.operationNotAllowed() = _OperationNotAllowed;
  const factory AppError.requiresRecentLogin() = _RequiresRecentLogin;
  const factory AppError.userDisabled() = _UserDisabled;
  const factory AppError.userNotFound() = _UserNotFound;
  const factory AppError.weakPassword() = _WeakPassword;
  const factory AppError.wrongPassword() = _WrongPassword;
  const factory AppError.undefined() = _Undefined;
  const factory AppError.noInternetConnection() = _NoInternetConnection;
  const factory AppError.errorOccurred() = _ErrorOccurred;
  const AppError._();
}
