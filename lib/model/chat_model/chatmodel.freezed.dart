// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chatmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String get message => throw _privateConstructorUsedError;
  bool get isRecieved => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  DateTime get createdTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res>;
  $Res call(
      {String message, bool isRecieved, bool isLoading, DateTime createdTime});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res> implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  final ChatModel _value;
  // ignore: unused_field
  final $Res Function(ChatModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? isRecieved = freezed,
    Object? isLoading = freezed,
    Object? createdTime = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isRecieved: isRecieved == freezed
          ? _value.isRecieved
          : isRecieved // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$$_ChatModelCopyWith(
          _$_ChatModel value, $Res Function(_$_ChatModel) then) =
      __$$_ChatModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String message, bool isRecieved, bool isLoading, DateTime createdTime});
}

/// @nodoc
class __$$_ChatModelCopyWithImpl<$Res> extends _$ChatModelCopyWithImpl<$Res>
    implements _$$_ChatModelCopyWith<$Res> {
  __$$_ChatModelCopyWithImpl(
      _$_ChatModel _value, $Res Function(_$_ChatModel) _then)
      : super(_value, (v) => _then(v as _$_ChatModel));

  @override
  _$_ChatModel get _value => super._value as _$_ChatModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? isRecieved = freezed,
    Object? isLoading = freezed,
    Object? createdTime = freezed,
  }) {
    return _then(_$_ChatModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isRecieved: isRecieved == freezed
          ? _value.isRecieved
          : isRecieved // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatModel implements _ChatModel {
  _$_ChatModel(
      {required this.message,
      required this.isRecieved,
      this.isLoading = false,
      required this.createdTime});

  factory _$_ChatModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatModelFromJson(json);

  @override
  final String message;
  @override
  final bool isRecieved;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final DateTime createdTime;

  @override
  String toString() {
    return 'ChatModel(message: $message, isRecieved: $isRecieved, isLoading: $isLoading, createdTime: $createdTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatModel &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.isRecieved, isRecieved) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.createdTime, createdTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isRecieved),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(createdTime));

  @JsonKey(ignore: true)
  @override
  _$$_ChatModelCopyWith<_$_ChatModel> get copyWith =>
      __$$_ChatModelCopyWithImpl<_$_ChatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatModelToJson(
      this,
    );
  }
}

abstract class _ChatModel implements ChatModel {
  factory _ChatModel(
      {required final String message,
      required final bool isRecieved,
      final bool isLoading,
      required final DateTime createdTime}) = _$_ChatModel;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$_ChatModel.fromJson;

  @override
  String get message;
  @override
  bool get isRecieved;
  @override
  bool get isLoading;
  @override
  DateTime get createdTime;
  @override
  @JsonKey(ignore: true)
  _$$_ChatModelCopyWith<_$_ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
