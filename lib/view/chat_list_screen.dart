import 'package:flutter/material.dart';
import 'package:mal_learn/component/circle_button.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/constant/dimens.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.paddingM,
          vertical: Dimens.paddingS,
        ),
        child: Text(
          'チャット',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: Dimens.paddingL),
          child: CircleButton(
            icon: Icons.add,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
