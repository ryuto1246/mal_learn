import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_ui_state.freezed.dart';

@freezed
class AuthUiState with _$AuthUiState {
  factory AuthUiState.init() = _Init;
  factory AuthUiState.loading() = _Loading;
  factory AuthUiState.signInSuccess(User user) = _SignInSuccess;
  factory AuthUiState.signUpSuccess(User user) = _SignUpSuccess;
  factory AuthUiState.failure(Exception error) = _AuthFailure;
}
