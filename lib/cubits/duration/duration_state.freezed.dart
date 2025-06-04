// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DurationState {
  List<DurationItem> get durations => throw _privateConstructorUsedError;
  SortBy get sortBy => throw _privateConstructorUsedError;
  SortDirection get sortDirection => throw _privateConstructorUsedError;

  /// Create a copy of DurationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DurationStateCopyWith<DurationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DurationStateCopyWith<$Res> {
  factory $DurationStateCopyWith(
          DurationState value, $Res Function(DurationState) then) =
      _$DurationStateCopyWithImpl<$Res, DurationState>;
  @useResult
  $Res call(
      {List<DurationItem> durations,
      SortBy sortBy,
      SortDirection sortDirection});
}

/// @nodoc
class _$DurationStateCopyWithImpl<$Res, $Val extends DurationState>
    implements $DurationStateCopyWith<$Res> {
  _$DurationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DurationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? durations = null,
    Object? sortBy = null,
    Object? sortDirection = null,
  }) {
    return _then(_value.copyWith(
      durations: null == durations
          ? _value.durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<DurationItem>,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      sortDirection: null == sortDirection
          ? _value.sortDirection
          : sortDirection // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DurationStateImplCopyWith<$Res>
    implements $DurationStateCopyWith<$Res> {
  factory _$$DurationStateImplCopyWith(
          _$DurationStateImpl value, $Res Function(_$DurationStateImpl) then) =
      __$$DurationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DurationItem> durations,
      SortBy sortBy,
      SortDirection sortDirection});
}

/// @nodoc
class __$$DurationStateImplCopyWithImpl<$Res>
    extends _$DurationStateCopyWithImpl<$Res, _$DurationStateImpl>
    implements _$$DurationStateImplCopyWith<$Res> {
  __$$DurationStateImplCopyWithImpl(
      _$DurationStateImpl _value, $Res Function(_$DurationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DurationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? durations = null,
    Object? sortBy = null,
    Object? sortDirection = null,
  }) {
    return _then(_$DurationStateImpl(
      durations: null == durations
          ? _value._durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<DurationItem>,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      sortDirection: null == sortDirection
          ? _value.sortDirection
          : sortDirection // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ));
  }
}

/// @nodoc

class _$DurationStateImpl implements _DurationState {
  const _$DurationStateImpl(
      {final List<DurationItem> durations = const [],
      this.sortBy = SortBy.date,
      this.sortDirection = SortDirection.asc})
      : _durations = durations;

  final List<DurationItem> _durations;
  @override
  @JsonKey()
  List<DurationItem> get durations {
    if (_durations is EqualUnmodifiableListView) return _durations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_durations);
  }

  @override
  @JsonKey()
  final SortBy sortBy;
  @override
  @JsonKey()
  final SortDirection sortDirection;

  @override
  String toString() {
    return 'DurationState(durations: $durations, sortBy: $sortBy, sortDirection: $sortDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._durations, _durations) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortDirection, sortDirection) ||
                other.sortDirection == sortDirection));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_durations), sortBy, sortDirection);

  /// Create a copy of DurationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationStateImplCopyWith<_$DurationStateImpl> get copyWith =>
      __$$DurationStateImplCopyWithImpl<_$DurationStateImpl>(this, _$identity);
}

abstract class _DurationState implements DurationState {
  const factory _DurationState(
      {final List<DurationItem> durations,
      final SortBy sortBy,
      final SortDirection sortDirection}) = _$DurationStateImpl;

  @override
  List<DurationItem> get durations;
  @override
  SortBy get sortBy;
  @override
  SortDirection get sortDirection;

  /// Create a copy of DurationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationStateImplCopyWith<_$DurationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
