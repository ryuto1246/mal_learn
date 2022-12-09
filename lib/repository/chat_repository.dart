import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/chat_message.dart';
import 'package:mal_learn/model/error.dart';
import 'package:mal_learn/model/result.dart';

abstract class ChatRepository {
  Future<Result<List<ChatMessage>>> fetchChatMessages(String id);
}

class ChatRepositoryImpliment extends ChatRepository {
  @override
  Future<Result<List<ChatMessage>>> fetchChatMessages(String id) async {
    try {
      logger.d('loading messages of chat room: $id');

      final snapshot = await FirebaseFirestore.instance
          .collection('rooms')
          .doc(id)
          .collection('messages')
          // .orderBy('sentAt', descending: true)
          .get();

      final messageList = snapshot.docs.map((doc) {
        final data = doc.data();
        return ChatMessage(
          id: doc.reference.id,
          sentBy: data['sentBy'] as String,
          sentAt: (data['sentAt'] as Timestamp).toDate(),
          text: data['text'] as String,
        );
      }).toList();

      return Result.success(messageList);
    } on Exception catch (e) {
      logger.e('failed to fetch chat messages: $e');
      return Result.failure(const AppError.fetchChatMessagesError());
    }
  }
}
