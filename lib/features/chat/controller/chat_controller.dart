// import 'package:chat_app/features/home/controller/home_controller.dart';
// import 'package:chat_app/models/message.dart';
// import 'package:chat_app/models/user_model.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../../core/service/web_socket_service.dart';

// final allChatsProvider =
//     StreamProvider<Map<String, List<MessageModel>>>((ref) async* {
//   String userId = ref.read(homeControllerProvider).userModel!.uid;
//   Map<String, List<MessageModel>> allChats =
//       const <String, List<MessageModel>>{};

//   await for (final message in ref.read(webSocketProvider).stream) {
//     if (message.startsWith("senderId:")) {
//       List<String> messageDatas = message.split(",");
//       String senderId = messageDatas[0].split(":")[1];
//       MessageModel messageModel = MessageModel(
//         senderId: senderId,
//         receiverId: userId,
//         text: messageDatas[1].split(":")[1],
//       );
//       if (allChats.containsKey(senderId)) {
//         List<MessageModel> messages = allChats[senderId] ?? [];
//         allChats[senderId] = [...messages, messageModel];
//       } else {
//         allChats[senderId] = [messageModel];
//       }

//       yield allChats;
//     }
//   }
// });

// final chatControllerProvider = Provider((ref) => ChatController(ref));

// class ChatController {
//   final ProviderRef ref;

//   ChatController(
//     this.ref,
//   );

//   sendMessage(MessageModel messageModel) {
//     ref.read(webSocketProvider).sendChatMessage(messageModel);
//   }
// }
