import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';
part 'user_message_list.freezed.dart';
part 'user_message_list.g.dart';

@freezed
class UserMessageListModel with _$UserMessageListModel {
  const UserMessageListModel._();
  const factory UserMessageListModel(
      {required String userId,
      @Default([]) List<MessageModel> messages}) = _UserMessageListModel;
  factory UserMessageListModel.fromJson(Map<String, dynamic> json) =>
      _$UserMessageListModelFromJson(json);
}
