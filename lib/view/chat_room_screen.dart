import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/component/overlay_loading_page.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/constant/test_style.dart';
import 'package:mal_learn/provider/chat_provider.dart';

class ChatRoomScreen extends ConsumerStatefulWidget {
  const ChatRoomScreen(this.id, {super.key});

  final String id;

  @override
  ConsumerState<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends ConsumerState<ChatRoomScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(chatViewModelProvider.notifier).fetchChatMessagesList(widget.id);
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
              body: StreamBuilder(
                stream: chatMessages,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    //TODO: まだメッセージがない時の画面
                    return const Center(child: CircularProgressIndicator());
                  }
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Text(snapshot.data[index].text);
                    },
                  );
                },
                //TODO: メッセージ読み込みエラー発生時の画面
              ),
            );
          },
          orElse: () => const OverlayLoadingPage(),
        );
  }
}
