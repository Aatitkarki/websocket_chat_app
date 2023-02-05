import 'dart:async';
import 'package:chat_app/config/ws_config.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

final webSocketProvider = Provider((ref) => WebSocketService());

class WebSocketService {
  late WebSocketChannel _channel;
  bool isConnected = false;

  Stream get stream => _channel.stream;

  WebSocketService();

  startConnection() {
    _channel = WebSocketChannel.connect(Uri.parse(WSConfig.uri));
    isConnected = true;
  }

  void _sendWSMessage(String message) {
    if (isConnected) _channel.sink.add(message);
  }

  void registerUser(UserModel userModel) {
    String registerationMessage = "register:${userModel.uid},${userModel.name}";
    _sendWSMessage(registerationMessage);
  }

  void sendMessage(MessageModel messageModel) {
    String message =
        "message:${messageModel.receiverId},${messageModel.senderId},${messageModel.text}";
    _channel.sink
        .add("senderId:${messageModel.senderId},message:${messageModel.text}");
    _sendWSMessage(message);
  }

  void listUsers() {
    String message = "list users";
    _sendWSMessage(message);
  }

  void dispose() {
    _channel.sink.close();
  }
}
