// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      message:
          (json['message'] as List<dynamic>?)?.map((e) => e as String).toList(),
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'message': instance.message,
      'participants': instance.participants,
    };
