import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/ui/chat_ui_state.dart';
import 'package:mal_learn/model/user.dart';
import 'package:mal_learn/repository/chat_repository.dart';

class ChatViewModel extends StateNotifier<ChatUiState> {
  ChatViewModel({
    required ChatRepository chatRepository,
  })  : _chatRepository = chatRepository,
        super(ChatUiState.init());

  final ChatRepository _chatRepository;
  late String _roomId;
  late AppUser _user;

  init(String roomId, AppUser user) {
    _roomId = roomId;
    _user = user;
  }

  fetchChatMessagesList() {
    state = ChatUiState.loading();
    final chatMessages = _chatRepository.fetchChatMessages(_roomId);
    state = ChatUiState.messageFetchSuccess(chatMessages);
  }

  sendChatMessage(TextEditingController controller) {
    final inputText = controller.text;

    if (inputText == '') {
      logger.e('Text Field is empty');
      return;
    }

    _chatRepository.sendMessage(
      roomId: _roomId,
      uid: _user.uid,
      text: inputText,
    );

    controller.text = '';
  }
}
