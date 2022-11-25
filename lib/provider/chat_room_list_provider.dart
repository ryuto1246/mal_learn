import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/model/ui/chat_room_list_ui_state.dart';
import 'package:mal_learn/repository/chat_room_summary_repository.dart';
import 'package:mal_learn/view_model/chat_room_list_view_model.dart';

final chatRoomListRepositoryProvider = Provider<ChatRoomListRepository>(
  (_) => ChatRoomListRepositoryImpliment(),
);

final chatRoomListViewModelProvider =
    StateNotifierProvider<ChatRoomListViewModel, ChatRoomListUiState>(
  (ref) => ChatRoomListViewModel(
    chatRoomListRepository: ref.watch(chatRoomListRepositoryProvider),
  ),
);
