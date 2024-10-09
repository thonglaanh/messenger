import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_chat_request_model.freezed.dart';
part 'create_chat_request_model.g.dart';

@freezed
class CreateChatRequestModel with _$CreateChatRequestModel {
  factory CreateChatRequestModel({
    @Default(
        'https://lh3.googleusercontent.com/a/ACg8ocLpZDs6ksBQqGLbA725ZVNXmHoAU6d1sK6DHEJFdbZA-dPGweI=s96-c') String? image,
     List<String>? messenger,
    String? name,
    List<Map<String, dynamic>?>? participants,
    DateTime? createdAt,
    DateTime? updatedAt,

  }) = _CreateChatRequestModel;

  factory CreateChatRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateChatRequestModelFromJson(json);
}
