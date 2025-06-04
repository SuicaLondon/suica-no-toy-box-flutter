import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/cubits/duration/duration_cubit.dart';
import 'package:suica_no_toy_box_flutter/models/duration/duration_item.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_dialog.dart';

class MoreMenu extends StatelessWidget {
  const MoreMenu({super.key, required this.duration});

  final DurationItem duration;

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

  Future<void> _showDeleteDurationDialog(
      BuildContext context, DurationItem item) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Duration'),
        content: Text(
          'Are you sure you want to delete "${duration.name}"?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              context.read<DurationCubit>().deleteDuration(duration);
              Navigator.pop(context);
            },
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_horiz, size: Dimensions.md),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.sm)),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'edit',
          child: Row(
            children: [
              Icon(
                Icons.edit,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 8),
              const Text('Edit'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'delete',
          child: Row(
            children: [
              Icon(
                Icons.delete,
                size: 20,
                color: Theme.of(context).colorScheme.error,
              ),
              const SizedBox(width: 8),
              const Text('Delete'),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case 'edit':
            _showEditDurationDialog(context, duration);
            break;
          case 'delete':
            _showDeleteDurationDialog(context, duration);
            break;
        }
      },
    );
  }
}
