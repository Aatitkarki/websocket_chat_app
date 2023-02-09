import 'package:freezed_annotation/freezed_annotation.dart';
part 'rtc_candidate.freezed.dart';
part 'rtc_candidate.g.dart';

@freezed
class RtcCandidateModel with _$RtcCandidateModel {
  const RtcCandidateModel._();
  const factory RtcCandidateModel(
      {required String receiverId,
      required String callerId,
      String? candidate,
      int? sdpMLineIndex,
      String? sdpMid}) = _RtcCandidateModel;
  factory RtcCandidateModel.fromJson(Map<String, dynamic> json) =>
      _$RtcCandidateModelFromJson(json);
}
