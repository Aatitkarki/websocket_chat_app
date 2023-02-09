// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rtc_candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RtcCandidateModel _$$_RtcCandidateModelFromJson(Map<String, dynamic> json) =>
    _$_RtcCandidateModel(
      receiverId: json['receiverId'] as String,
      callerId: json['callerId'] as String,
      candidate: json['candidate'] as String?,
      sdpMLineIndex: json['sdpMLineIndex'] as int?,
      sdpMid: json['sdpMid'] as String?,
    );

Map<String, dynamic> _$$_RtcCandidateModelToJson(
        _$_RtcCandidateModel instance) =>
    <String, dynamic>{
      'receiverId': instance.receiverId,
      'callerId': instance.callerId,
      'candidate': instance.candidate,
      'sdpMLineIndex': instance.sdpMLineIndex,
      'sdpMid': instance.sdpMid,
    };
