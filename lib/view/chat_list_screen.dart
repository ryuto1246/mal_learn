import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/component/circle_button.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/model/user.dart';
import 'package:mal_learn/provider/chat_room_list_provider.dart';

class ChatListScreen extends ConsumerWidget {
  const ChatListScreen(this.appUser, {super.key});

  final AppUser appUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: ref.watch(chatRoomListViewModelProvider).maybeWhen(
            init: () {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref
                    .read(chatRoomListViewModelProvider.notifier)
                    .fetchChatRoomList(appUser.uid);
              });

              return const Center(child: CircularProgressIndicator());
            },
            fetchSuccess: (roomSummaryList) {
              return ListView.builder(
                itemCount: roomSummaryList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    
                  );
                  return Text(roomSummaryList[index].name ?? '[NO NAME]');
                },
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          ),
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
