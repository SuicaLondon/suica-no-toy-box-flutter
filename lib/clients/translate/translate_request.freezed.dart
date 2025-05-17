// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translate_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TranslateRequest _$TranslateRequestFromJson(Map<String, dynamic> json) {
  return _TranslateRequest.fromJson(json);
}

/// @nodoc
mixin _$TranslateRequest {
  String get sourceLang => throw _privateConstructorUsedError;
  String get sourceText => throw _privateConstructorUsedError;
  String get targetLang => throw _privateConstructorUsedError;

  /// Serializes this TranslateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TranslateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslateRequestCopyWith<TranslateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateRequestCopyWith<$Res> {
  factory $TranslateRequestCopyWith(
          TranslateRequest value, $Res Function(TranslateRequest) then) =
      _$TranslateRequestCopyWithImpl<$Res, TranslateRequest>;
  @useResult
  $Res call({String sourceLang, String sourceText, String targetLang});
}

/// @nodoc
class _$TranslateRequestCopyWithImpl<$Res, $Val extends TranslateRequest>
    implements $TranslateRequestCopyWith<$Res> {
  _$TranslateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLang = null,
    Object? sourceText = null,
    Object? targetLang = null,
  }) {
    return _then(_value.copyWith(
      sourceLang: null == sourceLang
          ? _value.sourceLang
          : sourceLang // ignore: cast_nullable_to_non_nullable
              as String,
      sourceText: null == sourceText
          ? _value.sourceText
          : sourceText // ignore: cast_nullable_to_non_nullable
              as String,
      targetLang: null == targetLang
          ? _value.targetLang
          : targetLang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslateRequestImplCopyWith<$Res>
    implements $TranslateRequestCopyWith<$Res> {
  factory _$$TranslateRequestImplCopyWith(_$TranslateRequestImpl value,
          $Res Function(_$TranslateRequestImpl) then) =
      __$$TranslateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sourceLang, String sourceText, String targetLang});
}

/// @nodoc
class __$$TranslateRequestImplCopyWithImpl<$Res>
    extends _$TranslateRequestCopyWithImpl<$Res, _$TranslateRequestImpl>
    implements _$$TranslateRequestImplCopyWith<$Res> {
  __$$TranslateRequestImplCopyWithImpl(_$TranslateRequestImpl _value,
      $Res Function(_$TranslateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLang = null,
    Object? sourceText = null,
    Object? targetLang = null,
  }) {
    return _then(_$TranslateRequestImpl(
      sourceLang: null == sourceLang
          ? _value.sourceLang
          : sourceLang // ignore: cast_nullable_to_non_nullable
              as String,
      sourceText: null == sourceText
          ? _value.sourceText
          : sourceText // ignore: cast_nullable_to_non_nullable
              as String,
      targetLang: null == targetLang
          ? _value.targetLang
          : targetLang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslateRequestImpl implements _TranslateRequest {
  const _$TranslateRequestImpl(
      {required this.sourceLang,
      required this.sourceText,
      required this.targetLang});

  factory _$TranslateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslateRequestImplFromJson(json);

  @override
  final String sourceLang;
  @override
  final String sourceText;
  @override
  final String targetLang;

  @override
  String toString() {
    return 'TranslateRequest(sourceLang: $sourceLang, sourceText: $sourceText, targetLang: $targetLang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateRequestImpl &&
            (identical(other.sourceLang, sourceLang) ||
                other.sourceLang == sourceLang) &&
            (identical(other.sourceText, sourceText) ||
                other.sourceText == sourceText) &&
            (identical(other.targetLang, targetLang) ||
                other.targetLang == targetLang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sourceLang, sourceText, targetLang);

  /// Create a copy of TranslateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateRequestImplCopyWith<_$TranslateRequestImpl> get copyWith =>
      __$$TranslateRequestImplCopyWithImpl<_$TranslateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslateRequestImplToJson(
      this,
    );
  }
}

abstract class _TranslateRequest implements TranslateRequest {
  const factory _TranslateRequest(
      {required final String sourceLang,
      required final String sourceText,
      required final String targetLang}) = _$TranslateRequestImpl;

  factory _TranslateRequest.fromJson(Map<String, dynamic> json) =
      _$TranslateRequestImpl.fromJson;

  @override
  String get sourceLang;
  @override
  String get sourceText;
  @override
  String get targetLang;

  /// Create a copy of TranslateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslateRequestImplCopyWith<_$TranslateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
