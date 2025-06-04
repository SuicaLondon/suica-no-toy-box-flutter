import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_cubit.dart';
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_state.dart';
import 'package:suica_no_toy_box_flutter/models/duration/duration_item.dart'
    show DurationItem;
import 'package:suica_no_toy_box_flutter/screens/duration/add_duration_button.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/card/duration_card.dart';

class DurationBoardScreen extends StatelessWidget {
  const DurationBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Duration Board')),
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
                  child:
                      BlocSelector<DurationCubit, DurationState, SortDirection>(
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
            RepaintBoundary(
              child: BlocSelector<DurationCubit, DurationState,
                  List<DurationItem>>(
                selector: (state) => state.durations,
                builder: (context, durations) {
                  return Wrap(
                    spacing: Dimensions.md,
                    runSpacing: Dimensions.xs,
                    children: durations.map((duration) {
                      return DurationCard(duration: duration);
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
