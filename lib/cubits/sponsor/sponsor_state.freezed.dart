// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SponsorState {
  String get companyName => throw _privateConstructorUsedError;
  List<Company> get companies => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, List<Company> companies)
        initial,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompaniesError,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompanyDetailsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, List<Company> companies)? initial,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, List<Company> companies)? initial,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SponsorInitial value) initial,
    required TResult Function(FetchCompaniesLoading value)
        fetchCompaniesLoading,
    required TResult Function(FetchCompaniesSuccess value)
        fetchCompaniesSuccess,
    required TResult Function(FetchCompaniesError value) fetchCompaniesError,
    required TResult Function(FetchCompanyDetailsLoading value)
        fetchCompanyDetailsLoading,
    required TResult Function(FetchCompanyDetailsSuccess value)
        fetchCompanyDetailsSuccess,
    required TResult Function(FetchCompanyDetailsError value)
        fetchCompanyDetailsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SponsorInitial value)? initial,
    TResult? Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult? Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult? Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult? Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult? Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult? Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SponsorInitial value)? initial,
    TResult Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorStateCopyWith<SponsorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorStateCopyWith<$Res> {
  factory $SponsorStateCopyWith(
          SponsorState value, $Res Function(SponsorState) then) =
      _$SponsorStateCopyWithImpl<$Res, SponsorState>;
  @useResult
  $Res call({String companyName, List<Company> companies});
}

/// @nodoc
class _$SponsorStateCopyWithImpl<$Res, $Val extends SponsorState>
    implements $SponsorStateCopyWith<$Res> {
  _$SponsorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? companies = null,
  }) {
    return _then(_value.copyWith(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorInitialImplCopyWith<$Res>
    implements $SponsorStateCopyWith<$Res> {
  factory _$$SponsorInitialImplCopyWith(_$SponsorInitialImpl value,
          $Res Function(_$SponsorInitialImpl) then) =
      __$$SponsorInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyName, List<Company> companies});
}

/// @nodoc
class __$$SponsorInitialImplCopyWithImpl<$Res>
    extends _$SponsorStateCopyWithImpl<$Res, _$SponsorInitialImpl>
    implements _$$SponsorInitialImplCopyWith<$Res> {
  __$$SponsorInitialImplCopyWithImpl(
      _$SponsorInitialImpl _value, $Res Function(_$SponsorInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? companies = null,
  }) {
    return _then(_$SponsorInitialImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$SponsorInitialImpl implements SponsorInitial {
  const _$SponsorInitialImpl(
      {this.companyName = '', final List<Company> companies = const []})
      : _companies = companies;

  @override
  @JsonKey()
  final String companyName;
  final List<Company> _companies;
  @override
  @JsonKey()
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'SponsorState.initial(companyName: $companyName, companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorInitialImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName,
      const DeepCollectionEquality().hash(_companies));

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorInitialImplCopyWith<_$SponsorInitialImpl> get copyWith =>
      __$$SponsorInitialImplCopyWithImpl<_$SponsorInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, List<Company> companies)
        initial,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompaniesError,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompanyDetailsError,
  }) {
    return initial(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, List<Company> companies)? initial,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
  }) {
    return initial?.call(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, List<Company> companies)? initial,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(companyName, companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SponsorInitial value) initial,
    required TResult Function(FetchCompaniesLoading value)
        fetchCompaniesLoading,
    required TResult Function(FetchCompaniesSuccess value)
        fetchCompaniesSuccess,
    required TResult Function(FetchCompaniesError value) fetchCompaniesError,
    required TResult Function(FetchCompanyDetailsLoading value)
        fetchCompanyDetailsLoading,
    required TResult Function(FetchCompanyDetailsSuccess value)
        fetchCompanyDetailsSuccess,
    required TResult Function(FetchCompanyDetailsError value)
        fetchCompanyDetailsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SponsorInitial value)? initial,
    TResult? Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult? Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult? Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult? Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult? Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult? Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SponsorInitial value)? initial,
    TResult Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SponsorInitial implements SponsorState {
  const factory SponsorInitial(
      {final String companyName,
      final List<Company> companies}) = _$SponsorInitialImpl;

  @override
  String get companyName;
  @override
  List<Company> get companies;

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorInitialImplCopyWith<_$SponsorInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCompaniesLoadingImplCopyWith<$Res>
    implements $SponsorStateCopyWith<$Res> {
  factory _$$FetchCompaniesLoadingImplCopyWith(
          _$FetchCompaniesLoadingImpl value,
          $Res Function(_$FetchCompaniesLoadingImpl) then) =
      __$$FetchCompaniesLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyName, List<Company> companies});
}

/// @nodoc
class __$$FetchCompaniesLoadingImplCopyWithImpl<$Res>
    extends _$SponsorStateCopyWithImpl<$Res, _$FetchCompaniesLoadingImpl>
    implements _$$FetchCompaniesLoadingImplCopyWith<$Res> {
  __$$FetchCompaniesLoadingImplCopyWithImpl(_$FetchCompaniesLoadingImpl _value,
      $Res Function(_$FetchCompaniesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? companies = null,
  }) {
    return _then(_$FetchCompaniesLoadingImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$FetchCompaniesLoadingImpl implements FetchCompaniesLoading {
  const _$FetchCompaniesLoadingImpl(
      {required this.companyName, required final List<Company> companies})
      : _companies = companies;

  @override
  final String companyName;
  final List<Company> _companies;
  @override
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'SponsorState.fetchCompaniesLoading(companyName: $companyName, companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCompaniesLoadingImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName,
      const DeepCollectionEquality().hash(_companies));

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCompaniesLoadingImplCopyWith<_$FetchCompaniesLoadingImpl>
      get copyWith => __$$FetchCompaniesLoadingImplCopyWithImpl<
          _$FetchCompaniesLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, List<Company> companies)
        initial,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompaniesError,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompanyDetailsError,
  }) {
    return fetchCompaniesLoading(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, List<Company> companies)? initial,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
  }) {
    return fetchCompaniesLoading?.call(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, List<Company> companies)? initial,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompaniesLoading != null) {
      return fetchCompaniesLoading(companyName, companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SponsorInitial value) initial,
    required TResult Function(FetchCompaniesLoading value)
        fetchCompaniesLoading,
    required TResult Function(FetchCompaniesSuccess value)
        fetchCompaniesSuccess,
    required TResult Function(FetchCompaniesError value) fetchCompaniesError,
    required TResult Function(FetchCompanyDetailsLoading value)
        fetchCompanyDetailsLoading,
    required TResult Function(FetchCompanyDetailsSuccess value)
        fetchCompanyDetailsSuccess,
    required TResult Function(FetchCompanyDetailsError value)
        fetchCompanyDetailsError,
  }) {
    return fetchCompaniesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SponsorInitial value)? initial,
    TResult? Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult? Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult? Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult? Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult? Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult? Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
  }) {
    return fetchCompaniesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SponsorInitial value)? initial,
    TResult Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompaniesLoading != null) {
      return fetchCompaniesLoading(this);
    }
    return orElse();
  }
}

abstract class FetchCompaniesLoading implements SponsorState {
  const factory FetchCompaniesLoading(
      {required final String companyName,
      required final List<Company> companies}) = _$FetchCompaniesLoadingImpl;

  @override
  String get companyName;
  @override
  List<Company> get companies;

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCompaniesLoadingImplCopyWith<_$FetchCompaniesLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCompaniesSuccessImplCopyWith<$Res>
    implements $SponsorStateCopyWith<$Res> {
  factory _$$FetchCompaniesSuccessImplCopyWith(
          _$FetchCompaniesSuccessImpl value,
          $Res Function(_$FetchCompaniesSuccessImpl) then) =
      __$$FetchCompaniesSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyName, List<Company> companies});
}

/// @nodoc
class __$$FetchCompaniesSuccessImplCopyWithImpl<$Res>
    extends _$SponsorStateCopyWithImpl<$Res, _$FetchCompaniesSuccessImpl>
    implements _$$FetchCompaniesSuccessImplCopyWith<$Res> {
  __$$FetchCompaniesSuccessImplCopyWithImpl(_$FetchCompaniesSuccessImpl _value,
      $Res Function(_$FetchCompaniesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? companies = null,
  }) {
    return _then(_$FetchCompaniesSuccessImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$FetchCompaniesSuccessImpl implements FetchCompaniesSuccess {
  const _$FetchCompaniesSuccessImpl(
      {required this.companyName, required final List<Company> companies})
      : _companies = companies;

  @override
  final String companyName;
  final List<Company> _companies;
  @override
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'SponsorState.fetchCompaniesSuccess(companyName: $companyName, companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCompaniesSuccessImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName,
      const DeepCollectionEquality().hash(_companies));

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCompaniesSuccessImplCopyWith<_$FetchCompaniesSuccessImpl>
      get copyWith => __$$FetchCompaniesSuccessImplCopyWithImpl<
          _$FetchCompaniesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, List<Company> companies)
        initial,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompaniesError,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompanyDetailsError,
  }) {
    return fetchCompaniesSuccess(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, List<Company> companies)? initial,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
  }) {
    return fetchCompaniesSuccess?.call(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, List<Company> companies)? initial,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompaniesSuccess != null) {
      return fetchCompaniesSuccess(companyName, companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SponsorInitial value) initial,
    required TResult Function(FetchCompaniesLoading value)
        fetchCompaniesLoading,
    required TResult Function(FetchCompaniesSuccess value)
        fetchCompaniesSuccess,
    required TResult Function(FetchCompaniesError value) fetchCompaniesError,
    required TResult Function(FetchCompanyDetailsLoading value)
        fetchCompanyDetailsLoading,
    required TResult Function(FetchCompanyDetailsSuccess value)
        fetchCompanyDetailsSuccess,
    required TResult Function(FetchCompanyDetailsError value)
        fetchCompanyDetailsError,
  }) {
    return fetchCompaniesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SponsorInitial value)? initial,
    TResult? Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult? Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult? Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult? Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult? Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult? Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
  }) {
    return fetchCompaniesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SponsorInitial value)? initial,
    TResult Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompaniesSuccess != null) {
      return fetchCompaniesSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchCompaniesSuccess implements SponsorState {
  const factory FetchCompaniesSuccess(
      {required final String companyName,
      required final List<Company> companies}) = _$FetchCompaniesSuccessImpl;

  @override
  String get companyName;
  @override
  List<Company> get companies;

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCompaniesSuccessImplCopyWith<_$FetchCompaniesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCompaniesErrorImplCopyWith<$Res>
    implements $SponsorStateCopyWith<$Res> {
  factory _$$FetchCompaniesErrorImplCopyWith(_$FetchCompaniesErrorImpl value,
          $Res Function(_$FetchCompaniesErrorImpl) then) =
      __$$FetchCompaniesErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, String companyName, List<Company> companies});
}

/// @nodoc
class __$$FetchCompaniesErrorImplCopyWithImpl<$Res>
    extends _$SponsorStateCopyWithImpl<$Res, _$FetchCompaniesErrorImpl>
    implements _$$FetchCompaniesErrorImplCopyWith<$Res> {
  __$$FetchCompaniesErrorImplCopyWithImpl(_$FetchCompaniesErrorImpl _value,
      $Res Function(_$FetchCompaniesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? companyName = null,
    Object? companies = null,
  }) {
    return _then(_$FetchCompaniesErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$FetchCompaniesErrorImpl implements FetchCompaniesError {
  const _$FetchCompaniesErrorImpl(
      {required this.error,
      this.companyName = '',
      final List<Company> companies = const []})
      : _companies = companies;

  @override
  final String error;
  @override
  @JsonKey()
  final String companyName;
  final List<Company> _companies;
  @override
  @JsonKey()
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'SponsorState.fetchCompaniesError(error: $error, companyName: $companyName, companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCompaniesErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, companyName,
      const DeepCollectionEquality().hash(_companies));

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCompaniesErrorImplCopyWith<_$FetchCompaniesErrorImpl> get copyWith =>
      __$$FetchCompaniesErrorImplCopyWithImpl<_$FetchCompaniesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, List<Company> companies)
        initial,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompaniesError,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompanyDetailsError,
  }) {
    return fetchCompaniesError(error, companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, List<Company> companies)? initial,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
  }) {
    return fetchCompaniesError?.call(error, companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, List<Company> companies)? initial,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompaniesError != null) {
      return fetchCompaniesError(error, companyName, companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SponsorInitial value) initial,
    required TResult Function(FetchCompaniesLoading value)
        fetchCompaniesLoading,
    required TResult Function(FetchCompaniesSuccess value)
        fetchCompaniesSuccess,
    required TResult Function(FetchCompaniesError value) fetchCompaniesError,
    required TResult Function(FetchCompanyDetailsLoading value)
        fetchCompanyDetailsLoading,
    required TResult Function(FetchCompanyDetailsSuccess value)
        fetchCompanyDetailsSuccess,
    required TResult Function(FetchCompanyDetailsError value)
        fetchCompanyDetailsError,
  }) {
    return fetchCompaniesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SponsorInitial value)? initial,
    TResult? Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult? Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult? Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult? Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult? Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult? Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
  }) {
    return fetchCompaniesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SponsorInitial value)? initial,
    TResult Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompaniesError != null) {
      return fetchCompaniesError(this);
    }
    return orElse();
  }
}

abstract class FetchCompaniesError implements SponsorState {
  const factory FetchCompaniesError(
      {required final String error,
      final String companyName,
      final List<Company> companies}) = _$FetchCompaniesErrorImpl;

  String get error;
  @override
  String get companyName;
  @override
  List<Company> get companies;

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCompaniesErrorImplCopyWith<_$FetchCompaniesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCompanyDetailsLoadingImplCopyWith<$Res>
    implements $SponsorStateCopyWith<$Res> {
  factory _$$FetchCompanyDetailsLoadingImplCopyWith(
          _$FetchCompanyDetailsLoadingImpl value,
          $Res Function(_$FetchCompanyDetailsLoadingImpl) then) =
      __$$FetchCompanyDetailsLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyName, List<Company> companies});
}

/// @nodoc
class __$$FetchCompanyDetailsLoadingImplCopyWithImpl<$Res>
    extends _$SponsorStateCopyWithImpl<$Res, _$FetchCompanyDetailsLoadingImpl>
    implements _$$FetchCompanyDetailsLoadingImplCopyWith<$Res> {
  __$$FetchCompanyDetailsLoadingImplCopyWithImpl(
      _$FetchCompanyDetailsLoadingImpl _value,
      $Res Function(_$FetchCompanyDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? companies = null,
  }) {
    return _then(_$FetchCompanyDetailsLoadingImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$FetchCompanyDetailsLoadingImpl implements FetchCompanyDetailsLoading {
  const _$FetchCompanyDetailsLoadingImpl(
      {required this.companyName, final List<Company> companies = const []})
      : _companies = companies;

  @override
  final String companyName;
  final List<Company> _companies;
  @override
  @JsonKey()
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'SponsorState.fetchCompanyDetailsLoading(companyName: $companyName, companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCompanyDetailsLoadingImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName,
      const DeepCollectionEquality().hash(_companies));

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCompanyDetailsLoadingImplCopyWith<_$FetchCompanyDetailsLoadingImpl>
      get copyWith => __$$FetchCompanyDetailsLoadingImplCopyWithImpl<
          _$FetchCompanyDetailsLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, List<Company> companies)
        initial,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompaniesError,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsLoading(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, List<Company> companies)? initial,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsLoading?.call(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, List<Company> companies)? initial,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompanyDetailsLoading != null) {
      return fetchCompanyDetailsLoading(companyName, companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SponsorInitial value) initial,
    required TResult Function(FetchCompaniesLoading value)
        fetchCompaniesLoading,
    required TResult Function(FetchCompaniesSuccess value)
        fetchCompaniesSuccess,
    required TResult Function(FetchCompaniesError value) fetchCompaniesError,
    required TResult Function(FetchCompanyDetailsLoading value)
        fetchCompanyDetailsLoading,
    required TResult Function(FetchCompanyDetailsSuccess value)
        fetchCompanyDetailsSuccess,
    required TResult Function(FetchCompanyDetailsError value)
        fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SponsorInitial value)? initial,
    TResult? Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult? Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult? Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult? Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult? Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult? Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SponsorInitial value)? initial,
    TResult Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompanyDetailsLoading != null) {
      return fetchCompanyDetailsLoading(this);
    }
    return orElse();
  }
}

abstract class FetchCompanyDetailsLoading implements SponsorState {
  const factory FetchCompanyDetailsLoading(
      {required final String companyName,
      final List<Company> companies}) = _$FetchCompanyDetailsLoadingImpl;

  @override
  String get companyName;
  @override
  List<Company> get companies;

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCompanyDetailsLoadingImplCopyWith<_$FetchCompanyDetailsLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCompanyDetailsSuccessImplCopyWith<$Res>
    implements $SponsorStateCopyWith<$Res> {
  factory _$$FetchCompanyDetailsSuccessImplCopyWith(
          _$FetchCompanyDetailsSuccessImpl value,
          $Res Function(_$FetchCompanyDetailsSuccessImpl) then) =
      __$$FetchCompanyDetailsSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyName, List<Company> companies});
}

/// @nodoc
class __$$FetchCompanyDetailsSuccessImplCopyWithImpl<$Res>
    extends _$SponsorStateCopyWithImpl<$Res, _$FetchCompanyDetailsSuccessImpl>
    implements _$$FetchCompanyDetailsSuccessImplCopyWith<$Res> {
  __$$FetchCompanyDetailsSuccessImplCopyWithImpl(
      _$FetchCompanyDetailsSuccessImpl _value,
      $Res Function(_$FetchCompanyDetailsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? companies = null,
  }) {
    return _then(_$FetchCompanyDetailsSuccessImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$FetchCompanyDetailsSuccessImpl implements FetchCompanyDetailsSuccess {
  const _$FetchCompanyDetailsSuccessImpl(
      {required this.companyName, final List<Company> companies = const []})
      : _companies = companies;

  @override
  final String companyName;
  final List<Company> _companies;
  @override
  @JsonKey()
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'SponsorState.fetchCompanyDetailsSuccess(companyName: $companyName, companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCompanyDetailsSuccessImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName,
      const DeepCollectionEquality().hash(_companies));

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCompanyDetailsSuccessImplCopyWith<_$FetchCompanyDetailsSuccessImpl>
      get copyWith => __$$FetchCompanyDetailsSuccessImplCopyWithImpl<
          _$FetchCompanyDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, List<Company> companies)
        initial,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompaniesError,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsSuccess(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, List<Company> companies)? initial,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsSuccess?.call(companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, List<Company> companies)? initial,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompanyDetailsSuccess != null) {
      return fetchCompanyDetailsSuccess(companyName, companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SponsorInitial value) initial,
    required TResult Function(FetchCompaniesLoading value)
        fetchCompaniesLoading,
    required TResult Function(FetchCompaniesSuccess value)
        fetchCompaniesSuccess,
    required TResult Function(FetchCompaniesError value) fetchCompaniesError,
    required TResult Function(FetchCompanyDetailsLoading value)
        fetchCompanyDetailsLoading,
    required TResult Function(FetchCompanyDetailsSuccess value)
        fetchCompanyDetailsSuccess,
    required TResult Function(FetchCompanyDetailsError value)
        fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SponsorInitial value)? initial,
    TResult? Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult? Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult? Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult? Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult? Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult? Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SponsorInitial value)? initial,
    TResult Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompanyDetailsSuccess != null) {
      return fetchCompanyDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchCompanyDetailsSuccess implements SponsorState {
  const factory FetchCompanyDetailsSuccess(
      {required final String companyName,
      final List<Company> companies}) = _$FetchCompanyDetailsSuccessImpl;

  @override
  String get companyName;
  @override
  List<Company> get companies;

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCompanyDetailsSuccessImplCopyWith<_$FetchCompanyDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCompanyDetailsErrorImplCopyWith<$Res>
    implements $SponsorStateCopyWith<$Res> {
  factory _$$FetchCompanyDetailsErrorImplCopyWith(
          _$FetchCompanyDetailsErrorImpl value,
          $Res Function(_$FetchCompanyDetailsErrorImpl) then) =
      __$$FetchCompanyDetailsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, String companyName, List<Company> companies});
}

/// @nodoc
class __$$FetchCompanyDetailsErrorImplCopyWithImpl<$Res>
    extends _$SponsorStateCopyWithImpl<$Res, _$FetchCompanyDetailsErrorImpl>
    implements _$$FetchCompanyDetailsErrorImplCopyWith<$Res> {
  __$$FetchCompanyDetailsErrorImplCopyWithImpl(
      _$FetchCompanyDetailsErrorImpl _value,
      $Res Function(_$FetchCompanyDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? companyName = null,
    Object? companies = null,
  }) {
    return _then(_$FetchCompanyDetailsErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$FetchCompanyDetailsErrorImpl implements FetchCompanyDetailsError {
  const _$FetchCompanyDetailsErrorImpl(
      {required this.error,
      required this.companyName,
      final List<Company> companies = const []})
      : _companies = companies;

  @override
  final String error;
  @override
  final String companyName;
  final List<Company> _companies;
  @override
  @JsonKey()
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'SponsorState.fetchCompanyDetailsError(error: $error, companyName: $companyName, companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCompanyDetailsErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, companyName,
      const DeepCollectionEquality().hash(_companies));

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCompanyDetailsErrorImplCopyWith<_$FetchCompanyDetailsErrorImpl>
      get copyWith => __$$FetchCompanyDetailsErrorImplCopyWithImpl<
          _$FetchCompanyDetailsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyName, List<Company> companies)
        initial,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompaniesSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompaniesError,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsLoading,
    required TResult Function(String companyName, List<Company> companies)
        fetchCompanyDetailsSuccess,
    required TResult Function(
            String error, String companyName, List<Company> companies)
        fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsError(error, companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyName, List<Company> companies)? initial,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult? Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult? Function(
            String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsError?.call(error, companyName, companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyName, List<Company> companies)? initial,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompaniesSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompaniesError,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsLoading,
    TResult Function(String companyName, List<Company> companies)?
        fetchCompanyDetailsSuccess,
    TResult Function(String error, String companyName, List<Company> companies)?
        fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompanyDetailsError != null) {
      return fetchCompanyDetailsError(error, companyName, companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SponsorInitial value) initial,
    required TResult Function(FetchCompaniesLoading value)
        fetchCompaniesLoading,
    required TResult Function(FetchCompaniesSuccess value)
        fetchCompaniesSuccess,
    required TResult Function(FetchCompaniesError value) fetchCompaniesError,
    required TResult Function(FetchCompanyDetailsLoading value)
        fetchCompanyDetailsLoading,
    required TResult Function(FetchCompanyDetailsSuccess value)
        fetchCompanyDetailsSuccess,
    required TResult Function(FetchCompanyDetailsError value)
        fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SponsorInitial value)? initial,
    TResult? Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult? Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult? Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult? Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult? Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult? Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
  }) {
    return fetchCompanyDetailsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SponsorInitial value)? initial,
    TResult Function(FetchCompaniesLoading value)? fetchCompaniesLoading,
    TResult Function(FetchCompaniesSuccess value)? fetchCompaniesSuccess,
    TResult Function(FetchCompaniesError value)? fetchCompaniesError,
    TResult Function(FetchCompanyDetailsLoading value)?
        fetchCompanyDetailsLoading,
    TResult Function(FetchCompanyDetailsSuccess value)?
        fetchCompanyDetailsSuccess,
    TResult Function(FetchCompanyDetailsError value)? fetchCompanyDetailsError,
    required TResult orElse(),
  }) {
    if (fetchCompanyDetailsError != null) {
      return fetchCompanyDetailsError(this);
    }
    return orElse();
  }
}

abstract class FetchCompanyDetailsError implements SponsorState {
  const factory FetchCompanyDetailsError(
      {required final String error,
      required final String companyName,
      final List<Company> companies}) = _$FetchCompanyDetailsErrorImpl;

  String get error;
  @override
  String get companyName;
  @override
  List<Company> get companies;

  /// Create a copy of SponsorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCompanyDetailsErrorImplCopyWith<_$FetchCompanyDetailsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
