// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_chat_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateChatRequestModel _$CreateChatRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateChatRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateChatRequestModel {
  String? get image => throw _privateConstructorUsedError;
  List<String>? get messenger => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<Map<String, dynamic>?>? get participants =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateChatRequestModelCopyWith<CreateChatRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatRequestModelCopyWith<$Res> {
  factory $CreateChatRequestModelCopyWith(CreateChatRequestModel value,
          $Res Function(CreateChatRequestModel) then) =
      _$CreateChatRequestModelCopyWithImpl<$Res, CreateChatRequestModel>;
  @useResult
  $Res call(
      {String? image,
      List<String>? messenger,
      String? name,
      List<Map<String, dynamic>?>? participants,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$CreateChatRequestModelCopyWithImpl<$Res,
        $Val extends CreateChatRequestModel>
    implements $CreateChatRequestModelCopyWith<$Res> {
  _$CreateChatRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? messenger = freezed,
    Object? name = freezed,
    Object? participants = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      messenger: freezed == messenger
          ? _value.messenger
          : messenger // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>?>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateChatRequestModelImplCopyWith<$Res>
    implements $CreateChatRequestModelCopyWith<$Res> {
  factory _$$CreateChatRequestModelImplCopyWith(
          _$CreateChatRequestModelImpl value,
          $Res Function(_$CreateChatRequestModelImpl) then) =
      __$$CreateChatRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? image,
      List<String>? messenger,
      String? name,
      List<Map<String, dynamic>?>? participants,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$CreateChatRequestModelImplCopyWithImpl<$Res>
    extends _$CreateChatRequestModelCopyWithImpl<$Res,
        _$CreateChatRequestModelImpl>
    implements _$$CreateChatRequestModelImplCopyWith<$Res> {
  __$$CreateChatRequestModelImplCopyWithImpl(
      _$CreateChatRequestModelImpl _value,
      $Res Function(_$CreateChatRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? messenger = freezed,
    Object? name = freezed,
    Object? participants = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CreateChatRequestModelImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      messenger: freezed == messenger
          ? _value._messenger
          : messenger // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>?>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateChatRequestModelImpl implements _CreateChatRequestModel {
  _$CreateChatRequestModelImpl(
      {this.image =
          'https://lh3.googleusercontent.com/a/ACg8ocLpZDs6ksBQqGLbA725ZVNXmHoAU6d1sK6DHEJFdbZA-dPGweI=s96-c',
      final List<String>? messenger,
      this.name,
      final List<Map<String, dynamic>?>? participants,
      this.createdAt,
      this.updatedAt})
      : _messenger = messenger,
        _participants = participants;

  factory _$CreateChatRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateChatRequestModelImplFromJson(json);

  @override
  @JsonKey()
  final String? image;
  final List<String>? _messenger;
  @override
  List<String>? get messenger {
    final value = _messenger;
    if (value == null) return null;
    if (_messenger is EqualUnmodifiableListView) return _messenger;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  final List<Map<String, dynamic>?>? _participants;
  @override
  List<Map<String, dynamic>?>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CreateChatRequestModel(image: $image, messenger: $messenger, name: $name, participants: $participants, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatRequestModelImpl &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._messenger, _messenger) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      image,
      const DeepCollectionEquality().hash(_messenger),
      name,
      const DeepCollectionEquality().hash(_participants),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatRequestModelImplCopyWith<_$CreateChatRequestModelImpl>
      get copyWith => __$$CreateChatRequestModelImplCopyWithImpl<
          _$CreateChatRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateChatRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateChatRequestModel implements CreateChatRequestModel {
  factory _CreateChatRequestModel(
      {final String? image,
      final List<String>? messenger,
      final String? name,
      final List<Map<String, dynamic>?>? participants,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$CreateChatRequestModelImpl;

  factory _CreateChatRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateChatRequestModelImpl.fromJson;

  @override
  String? get image;
  @override
  List<String>? get messenger;
  @override
  String? get name;
  @override
  List<Map<String, dynamic>?>? get participants;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CreateChatRequestModelImplCopyWith<_$CreateChatRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
