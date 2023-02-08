import 'package:chat_app/models/message.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part '../providers/state/ws_data.freezed.dart';

@freezed
class WsDataModel with _$WsDataModel {
  const factory WsDataModel.activeUsers({required UserModel user}) =
      _ActiveUsers;
  const factory WsDataModel.message({required MessageModel message}) = _Message;
}
