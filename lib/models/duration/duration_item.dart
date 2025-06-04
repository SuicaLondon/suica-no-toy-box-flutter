import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suica_no_toy_box_flutter/models/duration/options.dart'
    show DurationType, RepeatOption;

part 'duration_item.freezed.dart';
part 'duration_item.g.dart';

@freezed
class DurationItem with _$DurationItem {
  const factory DurationItem({
    required String id,
    required String name,
    required DurationType type,
    required RepeatOption repeat,
    required DateTime date,
  }) = _DurationItem;

  factory DurationItem.fromJson(Map<String, dynamic> json) =>
      _$DurationItemFromJson(json);
}
