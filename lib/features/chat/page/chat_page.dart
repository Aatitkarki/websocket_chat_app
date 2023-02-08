import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:chat_app/core/providers/message_providers.dart';
import 'package:chat_app/core/providers/registeration_provider.dart';
import 'package:chat_app/core/service/web_socket_service.dart';
import 'package:chat_app/core/widgets/app_error_widget.dart';
import 'package:chat_app/features/chat/controller/chat_controller.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatPage extends ConsumerWidget {
  final UserModel receiverModel;

  ChatPage({super.key, required this.receiverModel});

  final TextEditingController chatController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(receiverModel.name),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
                child: MessageListBuilder(receiverModel.uid),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: TextField(
                controller: chatController,
                decoration: InputDecoration(
                  hintText: 'Type your message here...',
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      String userId = ref.read(registerationStateProvider).uid;
                      if (chatController.text.trim().isNotEmpty) {
                        MessageModel messageModel = MessageModel(
                            senderId: userId,
                            receiverId: receiverModel.uid,
                            text: chatController.text);
                        ref
                            .read(messagesProvider.notifier)
                            .sendMessage(messageModel);
                      }
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MessageListBuilder extends ConsumerWidget {
  final String receiverId;
  const MessageListBuilder(
    this.receiverId, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String uid = ref.read(registerationStateProvider).uid;
    final allChats = ref.watch(messagesProvider);
    int messageListIndex =
        allChats.indexWhere((element) => element.userId == receiverId);
    return messageListIndex != -1
        ? ListView.builder(
            reverse: true,
            physics: const BouncingScrollPhysics(),
            itemCount: allChats[messageListIndex].messages.length,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            itemBuilder: (context, index) {
              return MessageBubble(
                  message: allChats[messageListIndex].messages[index].text,
                  isMe: allChats[messageListIndex].messages[index].senderId ==
                      uid);
            })
        : Container();
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  const MessageBubble({
    super.key,
    required this.message,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      margin: EdgeInsets.only(
          top: 10.h,
          bottom: 10.h,
          left: isMe ? 30.w : 10.w,
          right: isMe ? 10.w : 30.w),
      decoration: BoxDecoration(
        color: isMe ? Colors.blue[200] : Colors.grey[200],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.r),
          topRight: Radius.circular(15.r),
          bottomLeft: isMe ? Radius.circular(15.r) : const Radius.circular(0),
          bottomRight: isMe ? const Radius.circular(0) : Radius.circular(15.r),
        ),
      ),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
