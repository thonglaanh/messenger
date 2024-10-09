import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger/base/dependency/network/users/model/user_model.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  factory ChatModel({
    String? id,
    String? name,
    String? image,
    List<String>? message,
    List<UserModel>? participants,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
