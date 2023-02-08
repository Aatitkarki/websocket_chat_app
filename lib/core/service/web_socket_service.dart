import 'dart:async';
import 'dart:io';
import 'package:chat_app/config/ws_config.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_socket_channel/io.dart';

final webSocketProvider = Provider((ref) => WebSocketService());

class WebSocketService {
  late IOWebSocketChannel _channel;
  bool isConnected = false;

  final streamController = StreamController.broadcast();

  Stream get stream => streamController.stream;

  WebSocketService();

  startConnection() {
    WebSocket.connect(WSConfig.uri).then((ws) {
      _channel = IOWebSocketChannel(ws);
      streamController.add(_channel.stream);
      isConnected = true;
    });
  }

  void _sendWSMessage(String message) {
    if (isConnected) streamController.sink.add(message);
  }

  void registerUser(UserModel userModel) {
    String registerationMessage = "register:${userModel.uid},${userModel.name}";
    _sendWSMessage(registerationMessage);
  }

  void sendMessage(MessageModel messageModel) {
    String message =
        "message:${messageModel.receiverId},${messageModel.senderId},${messageModel.text}";
    streamController.sink
        .add("senderId:${messageModel.senderId},message:${messageModel.text}");
    _sendWSMessage(message);
  }

  void listUsers(String userId) {
    String message = "list users:$userId";
    _sendWSMessage(message);
  }

  void dispose() {
    _channel.sink.close();
  }
}
