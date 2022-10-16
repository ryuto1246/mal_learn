import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/error.dart';
import 'package:mal_learn/model/result.dart';
import 'package:mal_learn/model/user.dart';

abstract class UserProfileRepository {
  Future<Result<AppUser>> registerProfile(
    FirebaseFirestore firestore, {
    required String uid,
    required String userName,
    required DateTime birthDay,
    required String iconPath,
  });
}

class UserProfileRepositoryImpliment extends UserProfileRepository {
  @override
  Future<Result<AppUser>> registerProfile(
    FirebaseFirestore firestore, {
    required String uid,
    required String userName,
    required DateTime birthDay,
    required String iconPath,
  }) async {
    try {
      await firestore.collection('users').doc(uid).set({
        'userName': userName,
        'birthDay': Timestamp.fromDate(birthDay),
        'iconPath': iconPath
      });

      logger.d('Profile successfully registered.');
      return Result.success(
        AppUser(uid, userName, birthDay, iconPath),
      );
    } on Exception catch (e) {
      logger.e('failed to register profile: $e');
      return Result.failure(const AppError.registerProfileError());
    }
  }
}
