// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'suggestionmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuggestionModel _$SuggestionModelFromJson(Map<String, dynamic> json) {
  return _SuggestionModel.fromJson(json);
}

/// @nodoc
mixin _$SuggestionModel {
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionModelCopyWith<SuggestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionModelCopyWith<$Res> {
  factory $SuggestionModelCopyWith(
          SuggestionModel value, $Res Function(SuggestionModel) then) =
      _$SuggestionModelCopyWithImpl<$Res>;
  $Res call({String label});
}

/// @nodoc
class _$SuggestionModelCopyWithImpl<$Res>
    implements $SuggestionModelCopyWith<$Res> {
  _$SuggestionModelCopyWithImpl(this._value, this._then);

  final SuggestionModel _value;
  // ignore: unused_field
  final $Res Function(SuggestionModel) _then;

  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SuggestionModelCopyWith<$Res>
    implements $SuggestionModelCopyWith<$Res> {
  factory _$$_SuggestionModelCopyWith(
          _$_SuggestionModel value, $Res Function(_$_SuggestionModel) then) =
      __$$_SuggestionModelCopyWithImpl<$Res>;
  @override
  $Res call({String label});
}

/// @nodoc
class __$$_SuggestionModelCopyWithImpl<$Res>
    extends _$SuggestionModelCopyWithImpl<$Res>
    implements _$$_SuggestionModelCopyWith<$Res> {
  __$$_SuggestionModelCopyWithImpl(
      _$_SuggestionModel _value, $Res Function(_$_SuggestionModel) _then)
      : super(_value, (v) => _then(v as _$_SuggestionModel));

  @override
  _$_SuggestionModel get _value => super._value as _$_SuggestionModel;

  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_$_SuggestionModel(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuggestionModel implements _SuggestionModel {
  _$_SuggestionModel({required this.label});

  factory _$_SuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestionModelFromJson(json);

  @override
  final String label;

  @override
  String toString() {
    return 'SuggestionModel(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionModel &&
            const DeepCollectionEquality().equals(other.label, label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(label));

  @JsonKey(ignore: true)
  @override
  _$$_SuggestionModelCopyWith<_$_SuggestionModel> get copyWith =>
      __$$_SuggestionModelCopyWithImpl<_$_SuggestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestionModelToJson(
      this,
    );
  }
}

abstract class _SuggestionModel implements SuggestionModel {
  factory _SuggestionModel({required final String label}) = _$_SuggestionModel;

  factory _SuggestionModel.fromJson(Map<String, dynamic> json) =
      _$_SuggestionModel.fromJson;

  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestionModelCopyWith<_$_SuggestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
