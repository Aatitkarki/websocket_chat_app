import 'package:chat_app/core/providers/registeration_provider.dart';
import 'package:chat_app/core/models/ws_data.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/models/user_message_list.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../service/web_socket_service.dart';

final messagesProvider =
    StateNotifierProvider<MessageProvider, List<UserMessageListModel>>(
        MessageProvider.new);

final socketService = StreamProvider((ref) {
  final ss = ref.read(webSocketProvider);
  return ss.socketResponse.stream.asBroadcastStream();
});

class MessageProvider extends StateNotifier<List<UserMessageListModel>> {
  final StateNotifierProviderRef ref;
  WebSocketService get _socketServices => ref.read(webSocketProvider);
  MessageProvider(this.ref) : super([]) {
    ref.listen(socketService, (previous, next) {
      final data = next.value;
      if (data != null) {
        data.whenOrNull(
          message: (message) {
            List<UserMessageListModel> allMessage = state.toList();
            bool idFound = false;
            for (int i = 0; i < allMessage.length; i++) {
              if (allMessage[i].userId == message.senderId) {
                List<MessageModel> messageRelatedToSender =
                    allMessage[i].messages.toList();
                messageRelatedToSender.add(message);
                allMessage[i] =
                    allMessage[i].copyWith(messages: messageRelatedToSender);
                idFound = true;

                break;
              } else if (allMessage[i].userId == message.receiverId) {
                List<MessageModel> messageRelatedToReceiver =
                    allMessage[i].messages.toList();
                messageRelatedToReceiver.add(message);
                allMessage[i] =
                    allMessage[i].copyWith(messages: messageRelatedToReceiver);
                idFound = true;
                break;
              }
            }
            if (!idFound) {
              allMessage.add(
                UserMessageListModel(
                    userId: message.senderId, messages: [message]),
              );
            }
            state = allMessage;
          },
        );
      }
    });
  }

  void sendMessage(MessageModel messageModel) {
    _socketServices.sendTextMessage(messageModel);
  }
}
