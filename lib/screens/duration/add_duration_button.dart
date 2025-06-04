import 'package:flutter/material.dart'
    show showDialog, ElevatedButton, Icons, Colors;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          elevation: 0,
        ),
      ),
    );
  }
}
