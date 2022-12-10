import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mal_learn/model/chat_message.dart';
import 'package:mal_learn/model/error.dart';

part 'chat_ui_state.freezed.dart';

@freezed
class ChatUiState with _$ChatUiState {
  factory ChatUiState.init() = _Init;
  factory ChatUiState.loading() = _Loading;
  factory ChatUiState.messageFetchSuccess(
    Stream<List<ChatMessage>> chatMessage,
  ) = _FetchSuccess;
  factory ChatUiState.failure(AppError error) = _Failure;
}
