import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mal_learn/model/chat_room_summary.dart';

part 'chat_room_list_ui_state.freezed.dart';

@freezed
class ChatRoomListUiState with _$ChatRoomListUiState {
  factory ChatRoomListUiState.init() = _Init;
  factory ChatRoomListUiState.loading() = _Loading;
  factory ChatRoomListUiState.fetchSuccess(
    List<ChatRoomSummary> chatRoomList,
  ) = _FetchSuccess;
  factory ChatRoomListUiState.failure(Exception error) = _Failure;
}
