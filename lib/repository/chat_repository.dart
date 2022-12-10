import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/model/chat_message.dart';

abstract class ChatRepository {
  Stream<List<ChatMessage>> fetchChatMessages(String id);
}

class ChatRepositoryImpliment extends ChatRepository {
  @override
  Stream<List<ChatMessage>> fetchChatMessages(String id) {
    logger.d('loading messages of chat room: $id');

    final stream = FirebaseFirestore.instance
        .collection('rooms')
        .doc(id)
        .collection('messages')
        .orderBy('sentAt', descending: true)
        .snapshots();

    final transformer = StreamTransformer<QuerySnapshot<Map<String, dynamic>>,
        List<ChatMessage>>.fromHandlers(
      handleData: (value, sink) {
        final messageList = value.docs.map((doc) {
          final data = doc.data();
          return ChatMessage(
            id: doc.reference.id,
            sentBy: data['sentBy'] as String,
            sentAt: (data['sentAt'] as Timestamp).toDate(),
            text: data['text'] as String,
          );
        }).toList();
        sink.add(messageList);
      },
    );

    return stream.transform(transformer);
  }
}
