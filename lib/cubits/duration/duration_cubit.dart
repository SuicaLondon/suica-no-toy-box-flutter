import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_state.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_item.dart';

class DurationCubit extends Cubit<DurationState> {
  DurationCubit() : super(const DurationState());

  void addDuration(DurationItem duration) {
    final durations = [...state.durations, duration];
    emit(state.copyWith(durations: durations));
  }

  void updateDuration(DurationItem oldDuration, DurationItem newDuration) {
    final durations = state.durations.map((duration) {
      if (duration == oldDuration) {
        return newDuration;
      }
      return duration;
    }).toList();
    emit(state.copyWith(durations: durations));
  }

  void deleteDuration(DurationItem duration) {
    final durations = state.durations.where((d) => d != duration).toList();
    emit(state.copyWith(durations: durations));
  }

  void setSortBy(SortBy sortBy) {
    emit(state.copyWith(
      sortBy: sortBy,
      durations: sortDurations(),
    ));
  }

  void setSortDirection(SortDirection sortDirection) {
    emit(state.copyWith(
      sortDirection: sortDirection,
      durations: sortDurations(),
    ));
  }

  List<DurationItem> sortDurations() {
    final sorted = List<DurationItem>.from(state.durations);
    sorted.sort((a, b) {
      if (state.sortBy == SortBy.date) {
        return state.sortDirection == SortDirection.asc
            ? a.date.compareTo(b.date)
            : b.date.compareTo(a.date);
      } else {
        return state.sortDirection == SortDirection.asc
            ? a.name.compareTo(b.name)
            : b.name.compareTo(a.name);
      }
    });
    return sorted;
  }
}
