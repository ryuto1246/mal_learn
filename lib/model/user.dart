import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser(
    String uid,
    String userName,
    DateTime birthDay,
    String iconPath,
  ) = _AppUser;
}