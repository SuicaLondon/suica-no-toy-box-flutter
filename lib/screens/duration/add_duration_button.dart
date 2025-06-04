import 'package:flutter/material.dart'
    show showDialog, ElevatedButton, Icons, Theme;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart'
    show Dimensions;
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_cubit.dart'
    show DurationCubit;
import 'package:suica_no_toy_box_flutter/models/duration/duration_item.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_dialog.dart'
    show DurationDialog;

class AddDurationButton extends StatelessWidget {
  const AddDurationButton({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: Dimensions.sm, horizontal: Dimensions.sm),
      child: ElevatedButton.icon(
        onPressed: () => _showAddDurationDialog(context),
        icon: const Icon(Icons.add),
        label: const Text('Add date'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.sm),
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.md, vertical: Dimensions.sm),
          elevation: 0,
        ),
      ),
    );
  }
}
