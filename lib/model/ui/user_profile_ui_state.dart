import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_ui_state.freezed.dart';

@freezed
class UserProfileUiState with _$UserProfileUiState {
  const factory UserProfileUiState.init() = _Init;
  const factory UserProfileUiState.loading() = _Loading;
  const factory UserProfileUiState.success() = _Success;
  const factory UserProfileUiState.failure() = _Failure;
}