import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/model/ui/userprofileuistate.dart';
import 'package:mal_learn/repository/user_profile_repository.dart';
import 'package:mal_learn/view_model/user_profile_view_model.dart';

final userProfileRepositoryProvider =
    Provider<UserProfileRepository>((_) => UserProfileRepositoryImpliment());

final userProfileViewModelProvider =
    StateNotifierProvider<UserProfileViewModel, UserProfileUiState>(
  (ref) => UserProfileViewModel(
    userProfileRepository: ref.watch(userProfileRepositoryProvider),
  ),
);
