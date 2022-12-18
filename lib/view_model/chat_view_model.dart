import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  String? _inputText;

  init(String roomId, AppUser user) {
    _roomId = roomId;
    _user = user;
  }

  fetchChatMessagesList() {
    state = ChatUiState.loading();
    final chatMessages = _chatRepository.fetchChatMessages(_roomId);
    state = ChatUiState.messageFetchSuccess(chatMessages);
  }

  onInputChanged(String text) {
    _inputText = text;
  }

  sendChatMessage() {
    if (_inputText == null || _inputText == '') {
      //TODO: 送信に失敗した時のエラーハンドリング
      return;
    }

    _chatRepository.sendMessage(
      roomId: _roomId,
      uid: _user.uid,
      text: _inputText!,
    );
  }
}
