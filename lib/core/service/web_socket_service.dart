import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:chat_app/core/enums/ws_message_types.dart';
import 'package:chat_app/core/models/ws_data.dart';
import 'package:chat_app/core/models/ws_request_data.dart';
import 'package:chat_app/core/service/web_socket_client.dart';
import 'package:chat_app/models/rtc_candidate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../models/message.dart';
import '../../models/user_model.dart';

final webSocketProvider = Provider(WebSocketService.new);

class WebSocketService {
  final ProviderRef ref;
  WebSocketChannel get _socketClient =>
      ref.read(wsClientProvider).webSocketChannel;

  final socketResponse = StreamController<WsDataModel>.broadcast();

  WebSocketService(this.ref);

  void _sendWSMessage(WsRequestDataModel message) {
    _socketClient.sink.add(jsonEncode(message.toJson()));
  }

  void registerUser(
    UserModel userModel,
  ) {
    _sendWSMessage(WsRequestDataModel(
        type: WSMessageType.register.value, data: userModel.toJson()));
  }

  void sendTextMessage(MessageModel messageModel) {
    WsRequestDataModel wsRequestDataModel = WsRequestDataModel(
        type: WSMessageType.sendText.value, data: messageModel.toJson());
    socketResponse.sink.add(WsDataModel.message(message: messageModel));
    _sendWSMessage(wsRequestDataModel);
  }

  void listUsers(String userId) {
    Map<String, dynamic> currentUserMap = {"uid": userId};
    _sendWSMessage(WsRequestDataModel(
        type: WSMessageType.listUser.value, data: currentUserMap));
  }

  void startVideoCall(RtcCandidateModel rtcCandidateModel) {
    _sendWSMessage(WsRequestDataModel(
        type: WSMessageType.videoCall.value, data: rtcCandidateModel.toJson()));
  }

  void listenMessages() {
    _socketClient.stream.asBroadcastStream().listen((event) {
      try {
        Map<String, dynamic> data = jsonDecode(event);
        WsRequestDataModel wsRequestDataModel =
            WsRequestDataModel.fromJson(data);
        if (wsRequestDataModel.type == WSMessageType.activeUser.value) {
          socketResponse.sink.add(WsDataModel.activeUsers(
              user: UserModel.fromJson(wsRequestDataModel.data)));
        } else if (wsRequestDataModel.type == WSMessageType.sendText.value) {
          socketResponse.sink.add(WsDataModel.message(
              message: MessageModel.fromJson(wsRequestDataModel.data)));
        }
      } catch (error) {
        print("$error");
      }
    });
  }
}
