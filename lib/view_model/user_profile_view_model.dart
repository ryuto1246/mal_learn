import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/model/error.dart';
import 'package:mal_learn/model/ui/user_profile_ui_state.dart';
import 'package:mal_learn/model/user.dart';
import 'package:mal_learn/repository/user_profile_repository.dart';

class UserProfileViewModel extends StateNotifier<UserProfileUiState> {
  UserProfileViewModel({
    required UserProfileRepository userProfileRepository,
  })  : _userProfileRepository = userProfileRepository,
        super(const UserProfileUiState.init());

  final UserProfileRepository _userProfileRepository;

  Future<void> registerProfile(
    FirebaseFirestore firestore, {
    required String uid,
    required String userName,
    required DateTime birthDay,
    required String iconPath,
  }) async {
    if (state != const UserProfileUiState.init()) {
      return;
    }

    state = const UserProfileUiState.loading();
    final result = await _userProfileRepository.registerProfile(
      firestore,
      uid: uid,
      userName: userName,
      birthDay: birthDay,
      iconPath: iconPath,
    );

    result.when(
      success: (AppUser user) {
        state = const UserProfileUiState.success();
      },
      failure: (AppError error) {
        state = const UserProfileUiState.failure();
      },
    );
  }

  Future<void> initializeState() async {
    state = const UserProfileUiState.init();
  }
}
