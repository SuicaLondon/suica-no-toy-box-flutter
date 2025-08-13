import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:suica_no_toy_box_flutter/constants/storage_keys.dart';
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_state.dart';
import 'package:suica_no_toy_box_flutter/models/duration/duration_item.dart';

class DurationCubit extends Cubit<DurationState> {
  DurationCubit() : super(const DurationState()) {
    _loadState();
  }
  final SharedPreferencesAsync _prefs = SharedPreferencesAsync();

  Future<void> _loadState() async {
    final durationsJson =
        await _prefs.getStringList(StorageKeys.durations) ?? [];
    final sortByString = await _prefs.getString(StorageKeys.sortByKey);
    final sortDirectionString =
        await _prefs.getString(StorageKeys.sortDirectionKey);
    final durations = durationsJson
        .map((json) => DurationItem.fromJson(jsonDecode(json)))
        .toList();

    emit(DurationState(
      durations: durations,
      sortBy:
          sortByString != null ? SortBy.fromString(sortByString) : SortBy.date,
      sortDirection: sortDirectionString != null
          ? SortDirection.fromString(sortDirectionString)
          : SortDirection.asc,
    ));
  }

  Future<void> _saveState() async {
    final durationsJson = state.durations
        .map((duration) => jsonEncode(duration.toJson()))
        .toList();
    await Future.wait([
      _prefs.setStringList(StorageKeys.durations, durationsJson),
      _prefs.setString(StorageKeys.sortByKey, state.sortBy.value),
      _prefs.setString(StorageKeys.sortDirectionKey, state.sortDirection.name),
    ]);
  }

  void addDuration(DurationItem duration) {
    final durations = [...state.durations, duration];
    emit(state.copyWith(durations: durations));
    _saveState();
  }

  void updateDuration(DurationItem oldDuration, DurationItem newDuration) {
    final durations = state.durations.map((duration) {
      if (duration == oldDuration) {
        return newDuration;
      }
      return duration;
    }).toList();
    emit(state.copyWith(durations: durations));
    _saveState();
  }

  void deleteDuration(DurationItem duration) {
    final durations = state.durations.where((d) => d != duration).toList();
    emit(state.copyWith(durations: durations));
    _saveState();
  }

  Future<void> copyDuration(DurationItem duration) async {
    try {
      emit(DurationState.copyLoading(
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
      final durationJson = jsonEncode(duration.toJson());
      await Clipboard.setData(ClipboardData(text: durationJson));
      emit(DurationState.copySuccess(
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
    } catch (e) {
      emit(DurationState.copyError(
        message: 'Failed to copy duration',
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
    }
  }

  Future<void> copyAllDurations() async {
    try {
      emit(DurationState.copyLoading(
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
      final durationsJson = jsonEncode(
        state.durations.map((duration) => duration.toJson()).toList(),
      );
      await Clipboard.setData(ClipboardData(text: durationsJson));
      emit(DurationState.copySuccess(
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
    } catch (e) {
      emit(DurationState.copyError(
        message: 'Failed to copy durations',
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
    }
  }

  Future<void> importDurationFromClipboard() async {
    try {
      emit(DurationState.importLoading(
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
      final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
      final clipboardText = clipboardData?.text;

      if (clipboardText == null || clipboardText.isEmpty) {
        throw Exception("Clipboard is empty");
      }

      final durationMap = jsonDecode(clipboardText) as Map<String, dynamic>;
      final duration = DurationItem.fromJson(durationMap);

      final isExist = state.durations.any((d) => d.id == duration.id);
      if (isExist) {
        throw Exception("Duration already exists");
      }

      final durations = [...state.durations, duration];
      emit(DurationState.importSuccess(
        durations: durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
    } catch (e) {
      emit(DurationState.importError(
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
        message: "Failed to import duration: $e",
      ));
    }
  }

  Future<void> importDurationsFromClipboard() async {
    try {
      emit(DurationState.importLoading(
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
      final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
      final clipboardText = clipboardData?.text;

      if (clipboardText == null || clipboardText.isEmpty) {
        throw Exception("Clipboard is empty");
      }

      final durationsList = jsonDecode(clipboardText) as List;
      final durations = durationsList
          .map((json) => DurationItem.fromJson(json as Map<String, dynamic>))
          .toList();

      // Check if any durations already exist
      final currentDurations = state.durations;
      final duplicateExists = currentDurations.any(
        (currentDuration) => durations.any((d) => d.id == currentDuration.id),
      );

      if (duplicateExists) {
        throw Exception("Some of the durations already exist");
      }

      // Add all new durations
      final newDurations = [...currentDurations, ...durations];
      emit(state.copyWith(durations: newDurations));
      await _saveState();
      emit(DurationState.importSuccess(
        durations: newDurations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
    } catch (e) {
      emit(DurationState.importError(
        message: "Failed to import durations: $e",
        durations: state.durations,
        sortBy: state.sortBy,
        sortDirection: state.sortDirection,
      ));
    }
  }

  void setSortBy(SortBy sortBy) {
    emit(state.copyWith(
      sortBy: sortBy,
      durations: sortDurations(),
    ));
    _saveState();
  }

  void setSortDirection(SortDirection sortDirection) {
    emit(state.copyWith(
      sortDirection: sortDirection,
      durations: sortDurations(),
    ));
    _saveState();
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
