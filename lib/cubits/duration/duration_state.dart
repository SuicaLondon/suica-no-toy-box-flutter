import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_item.dart';

part 'duration_state.freezed.dart';

@freezed
class DurationState with _$DurationState {
  const factory DurationState({
    @Default([]) List<DurationItem> durations,
    @Default(SortBy.date) SortBy sortBy,
    @Default(SortDirection.asc) SortDirection sortDirection,
  }) = _DurationState;
}

enum SortBy {
  date(label: 'Date', value: 'date'),
  name(label: 'Name', value: 'name');

  const SortBy({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;
}

enum SortDirection {
  asc,
  desc,
}
