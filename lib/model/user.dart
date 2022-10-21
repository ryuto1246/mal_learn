import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String userName,
    required DateTime birthDay,
    required String iconPath,
  }) = _AppUser;
}
