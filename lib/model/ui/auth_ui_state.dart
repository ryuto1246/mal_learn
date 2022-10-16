import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mal_learn/model/error.dart';

part 'auth_ui_state.freezed.dart';

@freezed
class AuthUiState with _$AuthUiState {
  factory AuthUiState.init() = _Init;
  factory AuthUiState.loading() = _Loading;
  factory AuthUiState.signInSuccess(User user) = _SignInSuccess;
  factory AuthUiState.signUpSuccess(User user) = _SignUpSuccess;
  factory AuthUiState.failure(AppError error) = _AuthFailure;
}
