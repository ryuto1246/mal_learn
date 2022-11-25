import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_room_summary.freezed.dart';

@freezed
class ChatRoomSummary with _$ChatRoomSummary {
  const factory ChatRoomSummary({
    required String? name,
    required DateTime? lastMessageAt,
    required String? iconPath,
    required ChatType chatType,
    required List<String> members,
    required DocumentReference reference,
  }) = _ChatRoomSummary;
}

enum ChatType { private, group }
