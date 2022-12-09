import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/model/chat_message.dart';
import 'package:mal_learn/model/error.dart';
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

    final result = await _chatRepository.fetchChatMessages(id);

    result.when(
      success: (List<ChatMessage> chatMessages) {
        state = ChatUiState.messageFetchSuccess(chatMessages);
      },
      failure: (AppError error) {
        state = ChatUiState.failure(error);
      },
    );
  }
}
