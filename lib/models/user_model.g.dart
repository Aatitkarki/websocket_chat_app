// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      name: json['name'] as String,
      uid: json['uid'] as String,
      isOnline: json['isOnline'] as bool? ?? true,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uid': instance.uid,
      'isOnline': instance.isOnline,
    };
