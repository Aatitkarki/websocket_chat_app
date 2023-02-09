import 'package:freezed_annotation/freezed_annotation.dart';
part 'caller_description.freezed.dart';
part 'caller_description.g.dart';

@freezed
class CallerDescriptionModel with _$CallerDescriptionModel {
  const CallerDescriptionModel._();
  const factory CallerDescriptionModel({
    required String receiverId,
    required String callerId,
    required String callerName,
    required Map<String, dynamic> sdp,
  }) = _CallerDescriptionModel;
  factory CallerDescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$CallerDescriptionModelFromJson(json);
}
