import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/model/error.dart';
import 'package:mal_learn/model/ui/auth_ui_state.dart';
import 'package:mal_learn/repository/auth_repository.dart';

class AuthViewModel extends StateNotifier<AuthUiState> {
  AuthViewModel({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(AuthUiState.init());

  final AuthRepository _authRepository;

  User? loginUser;

  //サインイン
  Future<void> signIn(FirebaseAuth auth, String email, String password) async {
    state = AuthUiState.loading();

    final result = await _authRepository.signIn(auth, email, password);
    result.when(
      success: (User user) {
        loginUser = user;
        state = AuthUiState.signInSuccess(user);
      },
      failure: (AppError error) {
        state = AuthUiState.failure(error);
      },
    );
  }
}
