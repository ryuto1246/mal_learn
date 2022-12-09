import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/component/circle_button.dart';
import 'package:mal_learn/constant/assets.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/constant/test_style.dart';
import 'package:mal_learn/model/chat_room_summary.dart';
import 'package:mal_learn/model/user.dart';
import 'package:mal_learn/provider/chat_provider.dart';
import 'package:mal_learn/provider/chat_room_list_provider.dart';
import 'package:mal_learn/view/chat_room_screen.dart';

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
                  return _buildListTile(context, ref, roomSummaryList, index);
                },
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          ),
    );
  }

  ListTile _buildListTile(
    BuildContext context,
    WidgetRef ref,
    List<ChatRoomSummary> roomSummaryList,
    int index,
  ) {
    return ListTile(
      title: Text(
        roomSummaryList[index].name ?? '[NO NAME]',
        style: AppTextStyle.title.bold,
      ),
      subtitle: const Text('最後のメッセージ'),
      trailing: Padding(
        padding: const EdgeInsets.only(right: Dimens.paddingXS),
        child: Text('0:00', style: AppTextStyle.label.small.accentColor),
      ),
      leading: ClipOval(child: Image.asset(AssetList.defaultIcon)),
      contentPadding: const EdgeInsets.symmetric(horizontal: Dimens.paddingM),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<Scaffold>(
            builder: (context) {
              final id = roomSummaryList[index].id;
              return ChatRoomScreen(id);
            },
          ),
        );
      },
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.paddingM,
          vertical: Dimens.paddingS,
        ),
        child: Text('チャット', style: AppTextStyle.headline.bold),
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
