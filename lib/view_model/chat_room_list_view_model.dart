import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/model/chat_room_summary.dart';
import 'package:mal_learn/model/ui/chat_room_list_ui_state.dart';
import 'package:mal_learn/repository/chat_room_summary_repository.dart';

class ChatRoomListViewModel extends StateNotifier<ChatRoomListUiState> {
  ChatRoomListViewModel({
    required ChatRoomListRepository chatRoomListRepository,
  })  : _chatRoomListRepository = chatRoomListRepository,
        super(ChatRoomListUiState.init());

  final ChatRoomListRepository _chatRoomListRepository;

  fetchChatRoomList(String uid) async {
    state = ChatRoomListUiState.loading();

    final result = await _chatRoomListRepository.fetchChatRoomList(uid);

    result.when(
      success: (List<ChatRoomSummary> chatRoomList) {
        state = ChatRoomListUiState.fetchSuccess(chatRoomList);
      },
      failure: (Exception error) {
        state = ChatRoomListUiState.failure(error);
      },
    );
  }
}
