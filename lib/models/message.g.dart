// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'text': instance.text,
    };
