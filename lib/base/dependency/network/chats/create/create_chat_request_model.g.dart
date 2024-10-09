// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chat_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateChatRequestModelImpl _$$CreateChatRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateChatRequestModelImpl(
      image: json['image'] as String? ??
          'https://lh3.googleusercontent.com/a/ACg8ocLpZDs6ksBQqGLbA725ZVNXmHoAU6d1sK6DHEJFdbZA-dPGweI=s96-c',
      messenger: (json['messenger'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>?)
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CreateChatRequestModelImplToJson(
        _$CreateChatRequestModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'messenger': instance.messenger,
      'name': instance.name,
      'participants': instance.participants,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
