import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_card.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_dialog.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_item.dart'
    show DurationItem;

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

class DurationBoardScreen extends StatefulWidget {
  const DurationBoardScreen({super.key});

  @override
  State<DurationBoardScreen> createState() => _DurationBoardScreenState();
}

class _DurationBoardScreenState extends State<DurationBoardScreen> {
  final ValueNotifier<List<DurationItem>> _durations = ValueNotifier([]);
  final ValueNotifier<SortBy> _sortBy = ValueNotifier(SortBy.date);
  final ValueNotifier<SortDirection> _sortDirection =
      ValueNotifier(SortDirection.asc);

  // Helper to open the add duration modal
  Future<void> _showAddDurationDialog() async {
    final newItem = await showDialog<DurationItem>(
      context: context,
      builder: (context) {
        return const DurationDialog();
      },
    );
    if (newItem != null) {
      _durations.value = [..._durations.value, newItem];
    }
  }

  // Helper to open the edit duration modal
  Future<void> _showEditDurationDialog(DurationItem item) async {
    final editedItem = await showDialog<DurationItem>(
      context: context,
      builder: (context) {
        return DurationDialog(
          name: item.name,
          type: item.type,
          repeat: item.repeat,
          initialDate: item.date,
        );
      },
    );
    if (editedItem != null) {
      _durations.value = _durations.value.map((duration) {
        if (duration == item) {
          return editedItem;
        }
        return duration;
      }).toList();
    }
  }

  // Helper to delete a duration
  void _deleteDuration(DurationItem item) {
    _durations.value =
        _durations.value.where((duration) => duration != item).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duration Board'),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(Dimensions.lg),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RepaintBoundary(
                  child: ValueListenableBuilder(
                      valueListenable: _sortBy,
                      builder: (context, sortBy, child) {
                        return DropdownButton<SortBy>(
                          value: sortBy,
                          borderRadius: BorderRadius.circular(8),
                          underline: const SizedBox(),
                          items: SortBy.values.map((e) {
                            return DropdownMenuItem(
                              value: e,
                              child: Text(e.label),
                            );
                          }).toList(),
                          onChanged: (val) =>
                              _sortBy.value = val ?? SortBy.date,
                        );
                      }),
                ),
                IconButton(
                  icon: RepaintBoundary(
                    child: ValueListenableBuilder(
                        valueListenable: _sortDirection,
                        builder: (context, sortDirection, child) {
                          return Icon(sortDirection == SortDirection.asc
                              ? Icons.arrow_upward
                              : Icons.arrow_downward);
                        }),
                  ),
                  onPressed: () => _sortDirection.value =
                      _sortDirection.value == SortDirection.asc
                          ? SortDirection.desc
                          : SortDirection.asc,
                  tooltip: 'Sort direction',
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: ElevatedButton.icon(
                    onPressed: _showAddDurationDialog,
                    icon: const Icon(Icons.add),
                    label: const Text('Add date'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
            RepaintBoundary(
              child: ValueListenableBuilder(
                  valueListenable: _durations,
                  builder: (context, durations, child) {
                    return ValueListenableBuilder(
                        valueListenable: _sortDirection,
                        builder: (context, sortDirection, child) {
                          return ValueListenableBuilder(
                              valueListenable: _sortBy,
                              builder: (context, sortBy, child) {
                                final sortedDurations = durations.toList();
                                sortedDurations.sort((a, b) {
                                  if (sortBy == SortBy.date) {
                                    return sortDirection == SortDirection.asc
                                        ? a.date.compareTo(b.date)
                                        : b.date.compareTo(a.date);
                                  } else {
                                    return sortDirection == SortDirection.asc
                                        ? a.name.compareTo(b.name)
                                        : b.name.compareTo(a.name);
                                  }
                                });
                                return Wrap(
                                  spacing: Dimensions.lg,
                                  runSpacing: Dimensions.lg,
                                  children: sortedDurations.map((duration) {
                                    return DurationCard(
                                      duration: duration,
                                      onEdit: _showEditDurationDialog,
                                      onDelete: _deleteDuration,
                                    );
                                  }).toList(),
                                );
                              });
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
