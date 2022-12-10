import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/model/ui/chat_ui_state.dart';
import 'package:mal_learn/repository/chat_repository.dart';

class ChatViewModel extends StateNotifier<ChatUiState> {
  ChatViewModel({
    required ChatRepository chatRepository,
  })  : _chatRepository = chatRepository,
        super(ChatUiState.init());

  final ChatRepository _chatRepository;

  fetchChatMessagesList(String id) async {
    state = ChatUiState.loading();

    final chatMessages = _chatRepository.fetchChatMessages(id);

    state = ChatUiState.messageFetchSuccess(chatMessages);
  }
}
