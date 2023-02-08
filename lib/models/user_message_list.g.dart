// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_message_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserMessageListModel _$$_UserMessageListModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserMessageListModel(
      userId: json['userId'] as String,
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserMessageListModelToJson(
        _$_UserMessageListModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'messages': instance.messages,
    };
