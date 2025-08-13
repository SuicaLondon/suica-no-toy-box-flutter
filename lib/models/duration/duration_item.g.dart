// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duration_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DurationItemImpl _$$DurationItemImplFromJson(Map<String, dynamic> json) =>
    _$DurationItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$DurationTypeEnumMap, json['type']),
      repeat: $enumDecode(_$RepeatOptionEnumMap, json['repeat']),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$DurationItemImplToJson(_$DurationItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$DurationTypeEnumMap[instance.type]!,
      'repeat': _$RepeatOptionEnumMap[instance.repeat]!,
      'date': instance.date.toIso8601String(),
    };

const _$DurationTypeEnumMap = {
  DurationType.none: 'none',
  DurationType.birthday: 'birthday',
  DurationType.anniversary: 'anniversary',
  DurationType.bills: 'bills',
};

const _$RepeatOptionEnumMap = {
  RepeatOption.never: 'never',
  RepeatOption.daily: 'day',
  RepeatOption.weekly: 'week',
  RepeatOption.monthly: 'month',
  RepeatOption.yearly: 'year',
};
