import 'package:chat_app/models/message.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ws_request_data.freezed.dart';
part 'ws_request_data.g.dart';

@freezed
class WsRequestDataModel with _$WsRequestDataModel {
  const WsRequestDataModel._();
  const factory WsRequestDataModel({
    required String type,
    required Map<String, dynamic> data,
  }) = _WsRequestDataModel;
  factory WsRequestDataModel.fromJson(Map<String, dynamic> json) =>
      _$WsRequestDataModelFromJson(json);
}
