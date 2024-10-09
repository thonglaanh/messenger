// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserRequestModelImpl _$$CreateUserRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserRequestModelImpl(
      displayName: json['displayName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      status: json['status'] as bool? ?? false,
      avatar: json['avatar'] as String? ??
          'https://lh3.googleusercontent.com/a/ACg8ocLpZDs6ksBQqGLbA725ZVNXmHoAU6d1sK6DHEJFdbZA-dPGweI=s96-c',
      friends: (json['friends'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CreateUserRequestModelImplToJson(
        _$CreateUserRequestModelImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'status': instance.status,
      'avatar': instance.avatar,
      'friends': instance.friends,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
