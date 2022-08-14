// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatModel _$$_ChatModelFromJson(Map<String, dynamic> json) => _$_ChatModel(
      message: json['message'] as String,
      isRecieved: json['isRecieved'] as bool,
      isLoading: json['isLoading'] as bool? ?? false,
      createdTime: DateTime.parse(json['createdTime'] as String),
    );

Map<String, dynamic> _$$_ChatModelToJson(_$_ChatModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isRecieved': instance.isRecieved,
      'isLoading': instance.isLoading,
      'createdTime': instance.createdTime.toIso8601String(),
    };
