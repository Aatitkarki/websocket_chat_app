// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caller_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CallerDescriptionModel _$$_CallerDescriptionModelFromJson(
        Map<String, dynamic> json) =>
    _$_CallerDescriptionModel(
      receiverId: json['receiverId'] as String,
      callerId: json['callerId'] as String,
      callerName: json['callerName'] as String,
      sdp: json['sdp'] as String,
    );

Map<String, dynamic> _$$_CallerDescriptionModelToJson(
        _$_CallerDescriptionModel instance) =>
    <String, dynamic>{
      'receiverId': instance.receiverId,
      'callerId': instance.callerId,
      'callerName': instance.callerName,
      'sdp': instance.sdp,
    };
