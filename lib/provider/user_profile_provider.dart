import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/ui/userprofileuistate.dart';
import 'package:mal_learn/model/user.dart';
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

final userDocProvider =
    StreamProvider.autoDispose.family<DocumentSnapshot, String>(
  (_, uid) =>
      FirebaseFirestore.instance.collection('users').doc(uid).snapshots(),
);

final userProfileProvider =
    FutureProvider.autoDispose.family<AppUser?, String>(
  (ref, uid) async {
    final user = await ref.watch(userDocProvider(uid).future);
    logger.d('Fetch user by uid: $uid');

    if (user.data() == null) {
      logger.d('User is not found.');
      return null;
    }

    final data = user.data() as Map<String, dynamic>;
    return AppUser(
      uid: uid,
      id: data['id'],
      userName: data['userName'],
      birthDay: (data['birthDay'] as Timestamp).toDate(),
      iconPath: '',
      //TODO: IconPathを読み込み
    );
  },
);
