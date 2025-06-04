import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_cubit.dart';
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_state.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_card.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_dialog.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_item.dart'
    show DurationItem;

class DurationBoardScreen extends StatelessWidget {
  const DurationBoardScreen({super.key});

  Future<void> _showAddDurationDialog(BuildContext context) async {
    final newItem = await showDialog<DurationItem>(
      context: context,
      builder: (context) {
        return const DurationDialog();
      },
    );
    if (newItem != null) {
      if (context.mounted) {
        context.read<DurationCubit>().addDuration(newItem);
      }
    }
  }

  Future<void> _showEditDurationDialog(
      BuildContext context, DurationItem item) async {
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
      if (context.mounted) {
        context.read<DurationCubit>().updateDuration(item, editedItem);
      }
    }
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
                  child: BlocSelector<DurationCubit, DurationState, SortBy>(
                    selector: (state) {
                      return state.sortBy;
                    },
                    builder: (context, sortBy) {
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
                        onChanged: (val) {
                          if (val != null) {
                            context.read<DurationCubit>().setSortBy(val);
                          }
                        },
                      );
                    },
                  ),
                ),
                BlocSelector<DurationCubit, DurationState, SortDirection>(
                  selector: (state) {
                    return state.sortDirection;
                  },
                  builder: (context, sortDirection) {
                    return IconButton(
                      icon: RepaintBoundary(
                        child: Icon(sortDirection == SortDirection.asc
                            ? Icons.arrow_upward
                            : Icons.arrow_downward),
                      ),
                      onPressed: () {
                        final newDirection = sortDirection == SortDirection.asc
                            ? SortDirection.desc
                            : SortDirection.asc;
                        context
                            .read<DurationCubit>()
                            .setSortDirection(newDirection);
                      },
                      tooltip: 'Sort direction',
                    );
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: ElevatedButton.icon(
                    onPressed: () => _showAddDurationDialog(context),
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
              child: BlocSelector<DurationCubit, DurationState,
                  List<DurationItem>>(
                selector: (state) {
                  return state.durations;
                },
                builder: (context, durations) {
                  return Wrap(
                    spacing: Dimensions.lg,
                    runSpacing: Dimensions.lg,
                    children: durations.map((duration) {
                      return DurationCard(
                        duration: duration,
                        onEdit: (item) =>
                            _showEditDurationDialog(context, item),
                        onDelete: (item) =>
                            context.read<DurationCubit>().deleteDuration(item),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
