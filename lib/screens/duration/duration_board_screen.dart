import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_cubit.dart';
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_state.dart';
import 'package:suica_no_toy_box_flutter/extensions/context_extension.dart';
import 'package:suica_no_toy_box_flutter/models/duration/duration_item.dart'
    show DurationItem;
import 'package:suica_no_toy_box_flutter/screens/duration/add_duration_button.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/card/duration_card.dart';

class DurationBoardScreen extends StatelessWidget {
  const DurationBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DurationCubit, DurationState>(
      listener: (context, state) {
        state.whenOrNull(
          null, // Default case - no action needed
          copySuccess: (durations, sortBy, sortDirection) {
            context.showSuccessSnackBar(
                'Durations copied to clipboard successfully!');
          },
          copyError: (durations, sortBy, sortDirection, message) {
            context.showErrorSnackBar(message);
          },
          importSuccess: (durations, sortBy, sortDirection) {
            context.showSuccessSnackBar('Durations imported successfully!');
          },
          importError: (durations, sortBy, sortDirection, message) {
            context.showErrorSnackBar(message);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Duration Board'),
          actions: [
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Menu',
              onSelected: (String value) {
                switch (value) {
                  case 'copy_durations':
                    context.read<DurationCubit>().copyAllDurations();
                    break;
                  case 'import_single':
                    context.read<DurationCubit>().importDurationFromClipboard();
                    break;
                  case 'import_multiple':
                    context
                        .read<DurationCubit>()
                        .importDurationsFromClipboard();
                    break;
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'copy_durations',
                  child: ListTile(
                    leading: Icon(Icons.copy),
                    title: Text('Copy Durations'),
                    subtitle: Text('Copy all durations to clipboard'),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
                const PopupMenuDivider(),
                const PopupMenuItem<String>(
                  value: 'import_single',
                  child: ListTile(
                    leading: Icon(Icons.download),
                    title: Text('Import Single Widget'),
                    subtitle: Text('Import one widget from clipboard'),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'import_multiple',
                  child: ListTile(
                    leading: Icon(Icons.cloud_download),
                    title: Text('Import Multiple Widgets'),
                    subtitle: Text('Import multiple widgets from clipboard'),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(Dimensions.lg),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RepaintBoundary(
                    child: BlocSelector<DurationCubit, DurationState, SortBy>(
                      selector: (state) => state.sortBy,
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
                  RepaintBoundary(
                    child: BlocSelector<DurationCubit, DurationState,
                        SortDirection>(
                      selector: (state) => state.sortDirection,
                      builder: (context, sortDirection) {
                        return IconButton(
                          icon: RepaintBoundary(
                            child: Icon(sortDirection == SortDirection.asc
                                ? Icons.arrow_upward
                                : Icons.arrow_downward),
                          ),
                          onPressed: () {
                            final newDirection =
                                sortDirection == SortDirection.asc
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
                  ),
                  const AddDurationButton(),
                ],
              ),
              Expanded(
                child: RepaintBoundary(
                  child: BlocSelector<DurationCubit, DurationState,
                      List<DurationItem>>(
                    selector: (state) => state.durations,
                    builder: (context, durations) {
                      return SingleChildScrollView(
                        child: Wrap(
                          spacing: Dimensions.md,
                          runSpacing: Dimensions.xs,
                          children: durations.map((duration) {
                            return DurationCard(duration: duration);
                          }).toList(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
