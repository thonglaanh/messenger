import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_request_model.freezed.dart';
part 'create_user_request_model.g.dart';

@freezed
class CreateUserRequestModel with _$CreateUserRequestModel {
  factory CreateUserRequestModel({
    required String displayName,
    required String? phoneNumber,
    String? email,
    @Default(false) bool? status,
    @Default(
        'https://lh3.googleusercontent.com/a/ACg8ocLpZDs6ksBQqGLbA725ZVNXmHoAU6d1sK6DHEJFdbZA-dPGweI=s96-c')
    String? avatar,
    @Default([]) List<String>? friends,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CreateUserRequestModel;

  factory CreateUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestModelFromJson(json);
}
