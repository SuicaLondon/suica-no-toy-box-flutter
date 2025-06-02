import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_card.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_dialog.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_item.dart'
    show DurationItem;
import 'package:suica_no_toy_box_flutter/screens/duration/options.dart'
    show DurationType, RepeatOption;

class DurationBoardScreen extends StatefulWidget {
  const DurationBoardScreen({super.key});

  @override
  State<DurationBoardScreen> createState() => _DurationBoardScreenState();
}

class _DurationBoardScreenState extends State<DurationBoardScreen> {
  final ValueNotifier<List<DurationItem>> _durations = ValueNotifier([
    DurationItem(
      name: 'Birthday',
      type: DurationType.none,
      repeat: RepeatOption.never,
      date: DateTime(2001, 11, 18),
    ),
  ]);
  final ValueNotifier<String> _sortBy = ValueNotifier('Date');
  final ValueNotifier<bool> _sortAsc = ValueNotifier(true);

  // Helper to open the add duration modal
  Future<void> _showAddDurationDialog() async {
    final newItem = await showDialog<DurationItem>(
      context: context,
      builder: (context) {
        return const NewDurationDialog();
      },
    );
    if (newItem != null) {
      _durations.value = [..._durations.value, newItem];
    }
  }

  // List<DurationItem> get _sortedDurations {
  //   final sorted = List<DurationItem>.from(_durations.value);
  //   sorted.sort((a, b) {
  //     int cmp;
  //     if (_sortBy == 'Date') {
  //       cmp = a.date.compareTo(b.date);
  //     } else {
  //       cmp = a.name
  //           .toLowerCase()
  //           .compareTo((b['name'] as String).toLowerCase());
  //     }
  //     return _sortAsc.value ? cmp : -cmp;
  //   });
  //   return sorted;
  // }

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
                ValueListenableBuilder(
                    valueListenable: _sortBy,
                    builder: (context, sortBy, child) {
                      return DropdownButton<String>(
                        value: sortBy,
                        borderRadius: BorderRadius.circular(8),
                        underline: const SizedBox(),
                        items: const [
                          DropdownMenuItem(value: 'Date', child: Text('Date')),
                          DropdownMenuItem(value: 'Name', child: Text('Name')),
                        ],
                        onChanged: (val) => _sortBy.value = val ?? 'Date',
                      );
                    }),
                IconButton(
                  icon: ValueListenableBuilder(
                      valueListenable: _sortAsc,
                      builder: (context, sortAsc, child) {
                        return Icon(sortAsc
                            ? Icons.arrow_upward
                            : Icons.arrow_downward);
                      }),
                  onPressed: () => _sortAsc.value = !_sortAsc.value,
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
            ValueListenableBuilder(
                valueListenable: _durations,
                builder: (context, durations, child) {
                  return Wrap(
                    spacing: Dimensions.lg,
                    runSpacing: Dimensions.lg,
                    children: durations.map((duration) {
                      return DurationCard(duration: duration);
                    }).toList(),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
