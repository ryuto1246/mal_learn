import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';

@freezed
class ChatMessage with _$ChatMessage {
  factory ChatMessage({
    required String id,
    required String sentBy,
    required DateTime sentAt,
    required String text,
  }) = _ChatMessage;
}
