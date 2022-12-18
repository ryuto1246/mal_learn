import 'package:extended_text/extended_text.dart';
import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/component/chat_text_span.dart';
import 'package:mal_learn/component/overlay_loading_page.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/constant/test_style.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/chat_message.dart';
import 'package:mal_learn/provider/chat_provider.dart';
import 'package:mal_learn/provider/user_profile_provider.dart';

class ChatRoomScreen extends ConsumerStatefulWidget {
  const ChatRoomScreen(this.roomId, {super.key});

  final String roomId;

  @override
  ConsumerState<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends ConsumerState<ChatRoomScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      logger.d(ref.read(userProfileViewModelProvider.notifier).user?.uid);
      final user = ref.read(userProfileViewModelProvider.notifier).user!;
      ref.read(chatViewModelProvider.notifier).init(widget.roomId, user);
      ref.read(chatViewModelProvider.notifier).fetchChatMessagesList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(chatViewModelProvider).maybeWhen(
          messageFetchSuccess: (chatMessages) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'Title',
                  style: AppTextStyle.headline.bold,
                ),
                centerTitle: false,
                elevation: 0,
                backgroundColor: Theme.of(context).canvasColor,
                iconTheme: const IconThemeData(color: AppColors.black),
                leadingWidth: 75,
                titleSpacing: 0,
              ),
              body: Column(
                children: [
                  _buildMessagesList(ref, chatMessages),
                  _buildInputBox(context, ref),
                ],
              ),
            );
          },
          orElse: () => const OverlayLoadingPage(),
        );
  }

  Widget _buildInputBox(BuildContext context, WidgetRef ref) {
    final chatViewModel = ref.read(chatViewModelProvider.notifier);
    final controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(
        left: Dimens.paddingM,
        right: Dimens.paddingM,
        top: Dimens.paddingS,
        bottom: Dimens.paddingL,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.teelBackgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: Dimens.paddingM,
            right: Dimens.paddingXS,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ExtendedTextField(
                  maxLength: null,
                  minLines: null,
                  decoration: const InputDecoration(border: InputBorder.none),
                  controller: controller,
                  specialTextSpanBuilder: ChatTextSpanBuilder(),
                ),
              ),
              IconButton(
                onPressed: () => chatViewModel.sendChatMessage(controller),
                icon: const Icon(Icons.send),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessagesList(
    WidgetRef ref,
    Stream<List<ChatMessage>> chatMessages,
  ) {
    return Expanded(
      child: StreamBuilder(
        stream: chatMessages,
        builder:
            (BuildContext context, AsyncSnapshot<List<ChatMessage>> snapshot) {
          if (!snapshot.hasData) {
            //TODO: まだメッセージがない時の画面
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            reverse: true,
            itemBuilder: (context, index) {
              return _buildTextBaloon(ref, snapshot.data![index]);
            },
          );
        },
      ),
    );
  }

  Widget _buildTextBaloon(WidgetRef ref, ChatMessage message) {
    final uid = ref.read(userProfileViewModelProvider.notifier).user!.uid;
    final isSender = message.sentBy == uid;
    final sentAt = message.sentAt;

    final children = [
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.paddingXXS,
            horizontal: Dimens.paddingXS,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: isSender ? AppColors.accentColor : AppColors.gray,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: Dimens.paddingS,
              horizontal: Dimens.paddingM,
            ),
            child: ExtendedText(
              message.text,
              specialTextSpanBuilder: ChatTextSpanBuilder(),
              style: TextStyle(
                color: isSender ? AppColors.white : AppColors.black,
              ),
            ),
          ),
        ),
      ),
      Text(
        '${sentAt.hour}:${sentAt.minute.toString().padLeft(2, '0')}',
        style: AppTextStyle.label.small.gray,
      ),
    ];

    return Row(
      mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: isSender ? children.reversed.toList() : children,
    );
  }
}
