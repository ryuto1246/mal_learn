import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/model/ui/chat_ui_state.dart';
import 'package:mal_learn/repository/chat_repository.dart';
import 'package:mal_learn/view_model/chat_view_model.dart';

final chatRepositoryProvider = Provider<ChatRepository>(
  (_) => ChatRepositoryImpliment(),
);


final chatViewModelProvider = StateNotifierProvider<ChatViewModel, ChatUiState>(
  (ref) => ChatViewModel(
    chatRepository: ref.watch(chatRepositoryProvider)
  ),
);
