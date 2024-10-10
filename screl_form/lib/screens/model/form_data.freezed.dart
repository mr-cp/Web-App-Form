// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormsData _$FormsDataFromJson(Map<String, dynamic> json) {
  return _FormsData.fromJson(json);
}

/// @nodoc
mixin _$FormsData {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get preview => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormsDataCopyWith<FormsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormsDataCopyWith<$Res> {
  factory $FormsDataCopyWith(FormsData value, $Res Function(FormsData) then) =
      _$FormsDataCopyWithImpl<$Res, FormsData>;
  @useResult
  $Res call({String email, String name, String preview, String subject});
}

/// @nodoc
class _$FormsDataCopyWithImpl<$Res, $Val extends FormsData>
    implements $FormsDataCopyWith<$Res> {
  _$FormsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? preview = null,
    Object? subject = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormsDataImplCopyWith<$Res>
    implements $FormsDataCopyWith<$Res> {
  factory _$$FormsDataImplCopyWith(
          _$FormsDataImpl value, $Res Function(_$FormsDataImpl) then) =
      __$$FormsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String name, String preview, String subject});
}

/// @nodoc
class __$$FormsDataImplCopyWithImpl<$Res>
    extends _$FormsDataCopyWithImpl<$Res, _$FormsDataImpl>
    implements _$$FormsDataImplCopyWith<$Res> {
  __$$FormsDataImplCopyWithImpl(
      _$FormsDataImpl _value, $Res Function(_$FormsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? preview = null,
    Object? subject = null,
  }) {
    return _then(_$FormsDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormsDataImpl implements _FormsData {
  _$FormsDataImpl(
      {required this.email,
      required this.name,
      required this.preview,
      required this.subject});

  factory _$FormsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormsDataImplFromJson(json);

  @override
  final String email;
  @override
  final String name;
  @override
  final String preview;
  @override
  final String subject;

  @override
  String toString() {
    return 'FormsData(email: $email, name: $name, preview: $preview, subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormsDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name, preview, subject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormsDataImplCopyWith<_$FormsDataImpl> get copyWith =>
      __$$FormsDataImplCopyWithImpl<_$FormsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormsDataImplToJson(
      this,
    );
  }
}

abstract class _FormsData implements FormsData {
  factory _FormsData(
      {required final String email,
      required final String name,
      required final String preview,
      required final String subject}) = _$FormsDataImpl;

  factory _FormsData.fromJson(Map<String, dynamic> json) =
      _$FormsDataImpl.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  String get preview;
  @override
  String get subject;
  @override
  @JsonKey(ignore: true)
  _$$FormsDataImplCopyWith<_$FormsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
