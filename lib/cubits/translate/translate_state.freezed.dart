// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TranslateState _$TranslateStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return TranslateInitial.fromJson(json);
    case 'loading':
      return TranslateLoading.fromJson(json);
    case 'success':
      return TranslateSuccess.fromJson(json);
    case 'error':
      return TranslateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TranslateState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TranslateState {
  String get translatedText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String translatedText) initial,
    required TResult Function(String translatedText) loading,
    required TResult Function(String translatedText) success,
    required TResult Function(String error, String translatedText) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String translatedText)? initial,
    TResult? Function(String translatedText)? loading,
    TResult? Function(String translatedText)? success,
    TResult? Function(String error, String translatedText)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String translatedText)? initial,
    TResult Function(String translatedText)? loading,
    TResult Function(String translatedText)? success,
    TResult Function(String error, String translatedText)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateInitial value) initial,
    required TResult Function(TranslateLoading value) loading,
    required TResult Function(TranslateSuccess value) success,
    required TResult Function(TranslateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TranslateInitial value)? initial,
    TResult? Function(TranslateLoading value)? loading,
    TResult? Function(TranslateSuccess value)? success,
    TResult? Function(TranslateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateInitial value)? initial,
    TResult Function(TranslateLoading value)? loading,
    TResult Function(TranslateSuccess value)? success,
    TResult Function(TranslateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TranslateState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslateStateCopyWith<TranslateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateStateCopyWith<$Res> {
  factory $TranslateStateCopyWith(
          TranslateState value, $Res Function(TranslateState) then) =
      _$TranslateStateCopyWithImpl<$Res, TranslateState>;
  @useResult
  $Res call({String translatedText});
}

/// @nodoc
class _$TranslateStateCopyWithImpl<$Res, $Val extends TranslateState>
    implements $TranslateStateCopyWith<$Res> {
  _$TranslateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatedText = null,
  }) {
    return _then(_value.copyWith(
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslateInitialImplCopyWith<$Res>
    implements $TranslateStateCopyWith<$Res> {
  factory _$$TranslateInitialImplCopyWith(_$TranslateInitialImpl value,
          $Res Function(_$TranslateInitialImpl) then) =
      __$$TranslateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String translatedText});
}

/// @nodoc
class __$$TranslateInitialImplCopyWithImpl<$Res>
    extends _$TranslateStateCopyWithImpl<$Res, _$TranslateInitialImpl>
    implements _$$TranslateInitialImplCopyWith<$Res> {
  __$$TranslateInitialImplCopyWithImpl(_$TranslateInitialImpl _value,
      $Res Function(_$TranslateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatedText = null,
  }) {
    return _then(_$TranslateInitialImpl(
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslateInitialImpl implements TranslateInitial {
  const _$TranslateInitialImpl(
      {required this.translatedText, final String? $type})
      : $type = $type ?? 'initial';

  factory _$TranslateInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslateInitialImplFromJson(json);

  @override
  final String translatedText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TranslateState.initial(translatedText: $translatedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateInitialImpl &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, translatedText);

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateInitialImplCopyWith<_$TranslateInitialImpl> get copyWith =>
      __$$TranslateInitialImplCopyWithImpl<_$TranslateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String translatedText) initial,
    required TResult Function(String translatedText) loading,
    required TResult Function(String translatedText) success,
    required TResult Function(String error, String translatedText) error,
  }) {
    return initial(translatedText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String translatedText)? initial,
    TResult? Function(String translatedText)? loading,
    TResult? Function(String translatedText)? success,
    TResult? Function(String error, String translatedText)? error,
  }) {
    return initial?.call(translatedText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String translatedText)? initial,
    TResult Function(String translatedText)? loading,
    TResult Function(String translatedText)? success,
    TResult Function(String error, String translatedText)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(translatedText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateInitial value) initial,
    required TResult Function(TranslateLoading value) loading,
    required TResult Function(TranslateSuccess value) success,
    required TResult Function(TranslateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TranslateInitial value)? initial,
    TResult? Function(TranslateLoading value)? loading,
    TResult? Function(TranslateSuccess value)? success,
    TResult? Function(TranslateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateInitial value)? initial,
    TResult Function(TranslateLoading value)? loading,
    TResult Function(TranslateSuccess value)? success,
    TResult Function(TranslateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslateInitialImplToJson(
      this,
    );
  }
}

abstract class TranslateInitial implements TranslateState {
  const factory TranslateInitial({required final String translatedText}) =
      _$TranslateInitialImpl;

  factory TranslateInitial.fromJson(Map<String, dynamic> json) =
      _$TranslateInitialImpl.fromJson;

  @override
  String get translatedText;

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslateInitialImplCopyWith<_$TranslateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TranslateLoadingImplCopyWith<$Res>
    implements $TranslateStateCopyWith<$Res> {
  factory _$$TranslateLoadingImplCopyWith(_$TranslateLoadingImpl value,
          $Res Function(_$TranslateLoadingImpl) then) =
      __$$TranslateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String translatedText});
}

/// @nodoc
class __$$TranslateLoadingImplCopyWithImpl<$Res>
    extends _$TranslateStateCopyWithImpl<$Res, _$TranslateLoadingImpl>
    implements _$$TranslateLoadingImplCopyWith<$Res> {
  __$$TranslateLoadingImplCopyWithImpl(_$TranslateLoadingImpl _value,
      $Res Function(_$TranslateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatedText = null,
  }) {
    return _then(_$TranslateLoadingImpl(
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslateLoadingImpl implements TranslateLoading {
  const _$TranslateLoadingImpl(
      {required this.translatedText, final String? $type})
      : $type = $type ?? 'loading';

  factory _$TranslateLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslateLoadingImplFromJson(json);

  @override
  final String translatedText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TranslateState.loading(translatedText: $translatedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateLoadingImpl &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, translatedText);

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateLoadingImplCopyWith<_$TranslateLoadingImpl> get copyWith =>
      __$$TranslateLoadingImplCopyWithImpl<_$TranslateLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String translatedText) initial,
    required TResult Function(String translatedText) loading,
    required TResult Function(String translatedText) success,
    required TResult Function(String error, String translatedText) error,
  }) {
    return loading(translatedText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String translatedText)? initial,
    TResult? Function(String translatedText)? loading,
    TResult? Function(String translatedText)? success,
    TResult? Function(String error, String translatedText)? error,
  }) {
    return loading?.call(translatedText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String translatedText)? initial,
    TResult Function(String translatedText)? loading,
    TResult Function(String translatedText)? success,
    TResult Function(String error, String translatedText)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(translatedText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateInitial value) initial,
    required TResult Function(TranslateLoading value) loading,
    required TResult Function(TranslateSuccess value) success,
    required TResult Function(TranslateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TranslateInitial value)? initial,
    TResult? Function(TranslateLoading value)? loading,
    TResult? Function(TranslateSuccess value)? success,
    TResult? Function(TranslateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateInitial value)? initial,
    TResult Function(TranslateLoading value)? loading,
    TResult Function(TranslateSuccess value)? success,
    TResult Function(TranslateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslateLoadingImplToJson(
      this,
    );
  }
}

abstract class TranslateLoading implements TranslateState {
  const factory TranslateLoading({required final String translatedText}) =
      _$TranslateLoadingImpl;

  factory TranslateLoading.fromJson(Map<String, dynamic> json) =
      _$TranslateLoadingImpl.fromJson;

  @override
  String get translatedText;

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslateLoadingImplCopyWith<_$TranslateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TranslateSuccessImplCopyWith<$Res>
    implements $TranslateStateCopyWith<$Res> {
  factory _$$TranslateSuccessImplCopyWith(_$TranslateSuccessImpl value,
          $Res Function(_$TranslateSuccessImpl) then) =
      __$$TranslateSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String translatedText});
}

/// @nodoc
class __$$TranslateSuccessImplCopyWithImpl<$Res>
    extends _$TranslateStateCopyWithImpl<$Res, _$TranslateSuccessImpl>
    implements _$$TranslateSuccessImplCopyWith<$Res> {
  __$$TranslateSuccessImplCopyWithImpl(_$TranslateSuccessImpl _value,
      $Res Function(_$TranslateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatedText = null,
  }) {
    return _then(_$TranslateSuccessImpl(
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslateSuccessImpl implements TranslateSuccess {
  const _$TranslateSuccessImpl(
      {required this.translatedText, final String? $type})
      : $type = $type ?? 'success';

  factory _$TranslateSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslateSuccessImplFromJson(json);

  @override
  final String translatedText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TranslateState.success(translatedText: $translatedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateSuccessImpl &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, translatedText);

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateSuccessImplCopyWith<_$TranslateSuccessImpl> get copyWith =>
      __$$TranslateSuccessImplCopyWithImpl<_$TranslateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String translatedText) initial,
    required TResult Function(String translatedText) loading,
    required TResult Function(String translatedText) success,
    required TResult Function(String error, String translatedText) error,
  }) {
    return success(translatedText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String translatedText)? initial,
    TResult? Function(String translatedText)? loading,
    TResult? Function(String translatedText)? success,
    TResult? Function(String error, String translatedText)? error,
  }) {
    return success?.call(translatedText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String translatedText)? initial,
    TResult Function(String translatedText)? loading,
    TResult Function(String translatedText)? success,
    TResult Function(String error, String translatedText)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(translatedText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateInitial value) initial,
    required TResult Function(TranslateLoading value) loading,
    required TResult Function(TranslateSuccess value) success,
    required TResult Function(TranslateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TranslateInitial value)? initial,
    TResult? Function(TranslateLoading value)? loading,
    TResult? Function(TranslateSuccess value)? success,
    TResult? Function(TranslateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateInitial value)? initial,
    TResult Function(TranslateLoading value)? loading,
    TResult Function(TranslateSuccess value)? success,
    TResult Function(TranslateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslateSuccessImplToJson(
      this,
    );
  }
}

abstract class TranslateSuccess implements TranslateState {
  const factory TranslateSuccess({required final String translatedText}) =
      _$TranslateSuccessImpl;

  factory TranslateSuccess.fromJson(Map<String, dynamic> json) =
      _$TranslateSuccessImpl.fromJson;

  @override
  String get translatedText;

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslateSuccessImplCopyWith<_$TranslateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TranslateErrorImplCopyWith<$Res>
    implements $TranslateStateCopyWith<$Res> {
  factory _$$TranslateErrorImplCopyWith(_$TranslateErrorImpl value,
          $Res Function(_$TranslateErrorImpl) then) =
      __$$TranslateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, String translatedText});
}

/// @nodoc
class __$$TranslateErrorImplCopyWithImpl<$Res>
    extends _$TranslateStateCopyWithImpl<$Res, _$TranslateErrorImpl>
    implements _$$TranslateErrorImplCopyWith<$Res> {
  __$$TranslateErrorImplCopyWithImpl(
      _$TranslateErrorImpl _value, $Res Function(_$TranslateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? translatedText = null,
  }) {
    return _then(_$TranslateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslateErrorImpl implements TranslateError {
  const _$TranslateErrorImpl(
      {required this.error, required this.translatedText, final String? $type})
      : $type = $type ?? 'error';

  factory _$TranslateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslateErrorImplFromJson(json);

  @override
  final String error;
  @override
  final String translatedText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TranslateState.error(error: $error, translatedText: $translatedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, translatedText);

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateErrorImplCopyWith<_$TranslateErrorImpl> get copyWith =>
      __$$TranslateErrorImplCopyWithImpl<_$TranslateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String translatedText) initial,
    required TResult Function(String translatedText) loading,
    required TResult Function(String translatedText) success,
    required TResult Function(String error, String translatedText) error,
  }) {
    return error(this.error, translatedText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String translatedText)? initial,
    TResult? Function(String translatedText)? loading,
    TResult? Function(String translatedText)? success,
    TResult? Function(String error, String translatedText)? error,
  }) {
    return error?.call(this.error, translatedText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String translatedText)? initial,
    TResult Function(String translatedText)? loading,
    TResult Function(String translatedText)? success,
    TResult Function(String error, String translatedText)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, translatedText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateInitial value) initial,
    required TResult Function(TranslateLoading value) loading,
    required TResult Function(TranslateSuccess value) success,
    required TResult Function(TranslateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TranslateInitial value)? initial,
    TResult? Function(TranslateLoading value)? loading,
    TResult? Function(TranslateSuccess value)? success,
    TResult? Function(TranslateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateInitial value)? initial,
    TResult Function(TranslateLoading value)? loading,
    TResult Function(TranslateSuccess value)? success,
    TResult Function(TranslateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslateErrorImplToJson(
      this,
    );
  }
}

abstract class TranslateError implements TranslateState {
  const factory TranslateError(
      {required final String error,
      required final String translatedText}) = _$TranslateErrorImpl;

  factory TranslateError.fromJson(Map<String, dynamic> json) =
      _$TranslateErrorImpl.fromJson;

  String get error;
  @override
  String get translatedText;

  /// Create a copy of TranslateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslateErrorImplCopyWith<_$TranslateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
