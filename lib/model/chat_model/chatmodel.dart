import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatmodel.freezed.dart';
part 'chatmodel.g.dart';

@freezed
class ChatModel with _$ChatModel {
  factory ChatModel(
      {required String message,
      required bool isRecieved,
      @Default(false) bool isLoading,
      required DateTime createdTime}) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
