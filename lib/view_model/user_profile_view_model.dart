import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/ui/user_profile_ui_state.dart';
import 'package:mal_learn/model/user.dart';
import 'package:mal_learn/repository/user_profile_repository.dart';

class UserProfileViewModel extends StateNotifier<UserProfileUiState> {
  UserProfileViewModel({
    required UserProfileRepository userProfileRepository,
  })  : _userProfileRepository = userProfileRepository,
        super(const UserProfileUiState.init());

  final UserProfileRepository _userProfileRepository;

  AppUser? _user;
  AppUser? get user => _user;

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
        logger.d(user.uid);
        _user = user;
        state = UserProfileUiState.success(user);
      },
      failure: (Exception error) {
        state = const UserProfileUiState.failure();
      },
    );
  }

  Future<void> initializeState() async {
    state = const UserProfileUiState.init();
  }

  fetchUserProfile(String uid) async {
    state = const UserProfileUiState.loading();

    final user =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();
    logger.d('Fetched user by uid: $uid');

    if (user.data() == null) {
      logger.e('User is not found.');
      state = const UserProfileUiState.failure();
      return;
    }

    final data = user.data() as Map<String, dynamic>;
    final appUser = AppUser(
      uid: uid,
      id: data['id'],
      userName: data['userName'],
      birthDay: (data['birthDay'] as Timestamp).toDate(),
      iconPath: data['iconPath'],
    );

    _user = appUser;
    state = UserProfileUiState.success(appUser);
  }
}
