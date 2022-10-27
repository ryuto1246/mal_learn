import 'package:flutter/material.dart';
import 'package:mal_learn/component/clipped_background_image.dart';
import 'package:mal_learn/component/user_icon.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/model/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen(
    this.appUser, {
    super.key,
  });

  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildUserProfileHeader(),
      ],
    );
  }

  Column _buildUserProfileHeader() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: Dimens.userProfileHeaderHeight,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              //TODO: ユーザーが登録した画像を表示
              _buildBackgroundImage(),
              _buildUserIcon(),
            ],
          ),
        ),
        Text(
          appUser.userName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Text(
          //TODO: idを取得
          appUser.id,
          style: TextStyle(
            fontSize: 12,
            color: Colors.teal.shade300,
          ),
        ),
      ],
    );
  }

  Positioned _buildUserIcon() {
    return const Positioned(
      top: 160,
      child: UserIcon(
        image: AssetImage('assets/images/default_icon.png'),
      ),
    );
  }

  Positioned _buildBackgroundImage() {
    return const Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClippedBackgroundImage(
        AssetImage('assets/images/default_background.jpeg'),
      ),
    );
  }
}
