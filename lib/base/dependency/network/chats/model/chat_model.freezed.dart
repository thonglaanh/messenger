// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String>? get message => throw _privateConstructorUsedError;
  List<String>? get participants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? image,
      List<String>? message,
      List<String>? participants});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? message = freezed,
    Object? participants = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? image,
      List<String>? message,
      List<String>? participants});
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? message = freezed,
    Object? participants = freezed,
  }) {
    return _then(_$ChatModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl implements _ChatModel {
  _$ChatModelImpl(
      {this.id,
      this.name,
      this.image,
      final List<String>? message,
      final List<String>? participants})
      : _message = message,
        _participants = participants;

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;
  final List<String>? _message;
  @override
  List<String>? get message {
    final value = _message;
    if (value == null) return null;
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _participants;
  @override
  List<String>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatModel(id: $id, name: $name, image: $image, message: $message, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      const DeepCollectionEquality().hash(_message),
      const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel implements ChatModel {
  factory _ChatModel(
      {final String? id,
      final String? name,
      final String? image,
      final List<String>? message,
      final List<String>? participants}) = _$ChatModelImpl;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  List<String>? get message;
  @override
  List<String>? get participants;
  @override
  @JsonKey(ignore: true)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
