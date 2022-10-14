import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/model/ui/auth_ui_state.dart';
import 'package:mal_learn/repository/auth_repository.dart';
import 'package:mal_learn/repository/auth_repository_impliment.dart';
import 'package:mal_learn/view_model/auth_view_model.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (_) => AuthRepositoryImplement(),
);

final authViewModelProvider = StateNotifierProvider<AuthViewModel, AuthUiState>(
  (ref) => AuthViewModel(authRepository: ref.watch(authRepositoryProvider)),
);
