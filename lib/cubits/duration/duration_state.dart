import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suica_no_toy_box_flutter/models/duration/duration_item.dart';

part 'duration_state.freezed.dart';

@freezed
class DurationState with _$DurationState {
  const factory DurationState({
    required List<DurationItem> durations,
    required SortBy sortBy,
    required SortDirection sortDirection,
  }) = _DurationState;

  const factory DurationState.copyLoading({
    required List<DurationItem> durations,
    required SortBy sortBy,
    required SortDirection sortDirection,
  }) = _DurationStateCopying;

  const factory DurationState.copySuccess({
    required List<DurationItem> durations,
    required SortBy sortBy,
    required SortDirection sortDirection,
  }) = _DurationStateCopySuccess;

  const factory DurationState.copyError({
    required List<DurationItem> durations,
    required SortBy sortBy,
    required SortDirection sortDirection,
    required String message,
  }) = _DurationStateCopyError;

  const factory DurationState.importLoading({
    required List<DurationItem> durations,
    required SortBy sortBy,
    required SortDirection sortDirection,
  }) = _DurationStateImportLoading;

  const factory DurationState.importSuccess({
    required List<DurationItem> durations,
    required SortBy sortBy,
    required SortDirection sortDirection,
  }) = _DurationStateImportSuccess;

  const factory DurationState.importError({
    required List<DurationItem> durations,
    required SortBy sortBy,
    required SortDirection sortDirection,
    required String message,
  }) = _DurationStateImportError;
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

  static SortBy fromString(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => SortBy.date,
    );
  }
}

enum SortDirection {
  asc(label: 'Ascending', value: 'asc'),
  desc(label: 'Descending', value: 'desc');

  const SortDirection({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;
  static SortDirection fromString(String value) {
    return values.firstWhere(
      (e) => e.name == value,
      orElse: () => SortDirection.asc,
    );
  }
}
