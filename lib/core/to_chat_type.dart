import 'package:mal_learn/model/chat_room_summary.dart';

extension ToChatType on String {
  toChatType() {
    switch (this) {
      case 'private':
        return ChatType.private;
      case 'group':
        return ChatType.group;
      default:
        return null;
    }
  }
}
