import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suica_no_toy_box_flutter/models/duration/duration_item.dart';

part 'duration_state.freezed.dart';

@freezed
class DurationState with _$DurationState {
  const factory DurationState({
    @Default([]) List<DurationItem> durations,
    @Default(SortBy.date) SortBy sortBy,
    @Default(SortDirection.asc) SortDirection sortDirection,
  }) = _DurationState;

  const factory DurationState.copyLoading({
    @Default([]) List<DurationItem> durations,
    @Default(SortBy.date) SortBy sortBy,
    @Default(SortDirection.asc) SortDirection sortDirection,
  }) = _DurationStateCopying;

  const factory DurationState.copySuccess({
    @Default([]) List<DurationItem> durations,
    @Default(SortBy.date) SortBy sortBy,
    @Default(SortDirection.asc) SortDirection sortDirection,
  }) = _DurationStateCopySuccess;

  const factory DurationState.copyError({
    @Default([]) List<DurationItem> durations,
    @Default(SortBy.date) SortBy sortBy,
    @Default(SortDirection.asc) SortDirection sortDirection,
    required String message,
  }) = _DurationStateCopyError;

  const factory DurationState.importLoading({
    @Default([]) List<DurationItem> durations,
    @Default(SortBy.date) SortBy sortBy,
    @Default(SortDirection.asc) SortDirection sortDirection,
  }) = _DurationStateImportLoading;

  const factory DurationState.importSuccess({
    @Default([]) List<DurationItem> durations,
    @Default(SortBy.date) SortBy sortBy,
    @Default(SortDirection.asc) SortDirection sortDirection,
  }) = _DurationStateImportSuccess;

  const factory DurationState.importError({
    @Default([]) List<DurationItem> durations,
    @Default(SortBy.date) SortBy sortBy,
    @Default(SortDirection.asc) SortDirection sortDirection,
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
