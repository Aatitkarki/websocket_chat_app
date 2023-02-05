import 'package:freezed_annotation/freezed_annotation.dart';
part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const MessageModel._();
  const factory MessageModel({
    required String senderId,
    required String receiverId,
    required String text,
  }) = _MessageModel;
  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
