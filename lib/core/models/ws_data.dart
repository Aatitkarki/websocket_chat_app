import 'package:chat_app/models/caller_description.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ws_data.freezed.dart';

@freezed
class WsDataModel with _$WsDataModel {
  const factory WsDataModel.activeUsers({required UserModel user}) =
      _ActiveUsers;
  const factory WsDataModel.message({required MessageModel message}) = _Message;

  const factory WsDataModel.incomingVideoCall(
          {required CallerDescriptionModel callerDescriptionModel}) =
      _IncomingVideoCall;

  const factory WsDataModel.acceptedVideoCall(
          {required CallerDescriptionModel receiverDescriptionModel}) =
      _AcceptedVideoCall;

  const factory WsDataModel.rejectedVideoCall() = _RejectedVideoCall;

  const factory WsDataModel.endedVideoCall() = _EndedVideoCall;

  // const factory WsDataModel.incomingVideoCall(
  //         {required CallerDescriptionModel callerDescriptionModel}) =
  //     _IncomingVideoCall;
}
