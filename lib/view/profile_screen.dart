import 'package:flutter/material.dart';
import 'package:mal_learn/component/clipped_background_image.dart';
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
            children: const [
              // Positioned(
              //   top: 0,
              //   left: 0,
              //   right: 0,
              //   child: ClippedBackgroundImage(AssetImage('')),
              // )
            ],
          ),
        )
      ],
    );
  }
}
