import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mal_learn/model/user.dart';

part 'user_profile_ui_state.freezed.dart';

@freezed
class UserProfileUiState with _$UserProfileUiState {
  const factory UserProfileUiState.init() = _Init;
  const factory UserProfileUiState.loading() = _Loading;
  const factory UserProfileUiState.success(AppUser user) = _Success;
  const factory UserProfileUiState.failure() = _Failure;
}
