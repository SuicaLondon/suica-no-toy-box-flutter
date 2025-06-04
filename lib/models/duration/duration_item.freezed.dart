// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duration_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DurationItem _$DurationItemFromJson(Map<String, dynamic> json) {
  return _DurationItem.fromJson(json);
}

/// @nodoc
mixin _$DurationItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DurationType get type => throw _privateConstructorUsedError;
  RepeatOption get repeat => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this DurationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DurationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DurationItemCopyWith<DurationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DurationItemCopyWith<$Res> {
  factory $DurationItemCopyWith(
          DurationItem value, $Res Function(DurationItem) then) =
      _$DurationItemCopyWithImpl<$Res, DurationItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      DurationType type,
      RepeatOption repeat,
      DateTime date});
}

/// @nodoc
class _$DurationItemCopyWithImpl<$Res, $Val extends DurationItem>
    implements $DurationItemCopyWith<$Res> {
  _$DurationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DurationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? repeat = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DurationType,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as RepeatOption,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DurationItemImplCopyWith<$Res>
    implements $DurationItemCopyWith<$Res> {
  factory _$$DurationItemImplCopyWith(
          _$DurationItemImpl value, $Res Function(_$DurationItemImpl) then) =
      __$$DurationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      DurationType type,
      RepeatOption repeat,
      DateTime date});
}

/// @nodoc
class __$$DurationItemImplCopyWithImpl<$Res>
    extends _$DurationItemCopyWithImpl<$Res, _$DurationItemImpl>
    implements _$$DurationItemImplCopyWith<$Res> {
  __$$DurationItemImplCopyWithImpl(
      _$DurationItemImpl _value, $Res Function(_$DurationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of DurationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? repeat = null,
    Object? date = null,
  }) {
    return _then(_$DurationItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DurationType,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as RepeatOption,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DurationItemImpl implements _DurationItem {
  const _$DurationItemImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.repeat,
      required this.date});

  factory _$DurationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$DurationItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DurationType type;
  @override
  final RepeatOption repeat;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'DurationItem(id: $id, name: $name, type: $type, repeat: $repeat, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, repeat, date);

  /// Create a copy of DurationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationItemImplCopyWith<_$DurationItemImpl> get copyWith =>
      __$$DurationItemImplCopyWithImpl<_$DurationItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DurationItemImplToJson(
      this,
    );
  }
}

abstract class _DurationItem implements DurationItem {
  const factory _DurationItem(
      {required final String id,
      required final String name,
      required final DurationType type,
      required final RepeatOption repeat,
      required final DateTime date}) = _$DurationItemImpl;

  factory _DurationItem.fromJson(Map<String, dynamic> json) =
      _$DurationItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DurationType get type;
  @override
  RepeatOption get repeat;
  @override
  DateTime get date;

  /// Create a copy of DurationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationItemImplCopyWith<_$DurationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
