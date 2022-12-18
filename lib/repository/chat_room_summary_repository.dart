import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/chat_room_summary.dart';
import 'package:mal_learn/model/result.dart';
import 'package:mal_learn/core/to_chat_type.dart';

abstract class ChatRoomListRepository {
  Future<Result<List<ChatRoomSummary>>> fetchChatRoomList(String uid);
}

class ChatRoomListRepositoryImpliment extends ChatRoomListRepository {
  @override
  Future<Result<List<ChatRoomSummary>>> fetchChatRoomList(String uid) async {
    try {
      //TODO: lastMessageAtで並び替え
      final snapshot = await FirebaseFirestore.instance
          .collection('rooms')
          .where('members', arrayContains: uid)
          .get();

      final chatRoomList = snapshot.docs.map((doc) {
        final data = doc.data();
        return ChatRoomSummary(
          id: doc.reference.id,
          name: data['name'] as String?,
          lastMessageAt: (data['lastMessageAt'] as Timestamp?)?.toDate(),
          iconPath: data['iconPath'] as String?,
          chatType: (data['chatType'] as String?)?.toChatType(),
          members: data['members'].cast<String>() as List<String>,
          reference: doc.reference,
        );
      }).toList();

      return Result.success(chatRoomList);
    } on Exception catch (e) {
      logger.e('failed to fetch chat room list: $e');
      return Result.failure(e);
    }
  }
}
