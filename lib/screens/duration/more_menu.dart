import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/duration_item.dart';

class MoreMenu extends StatelessWidget {
  const MoreMenu({
    super.key,
    required this.duration,
    required this.onEdit,
    required this.onDelete,
  });

  final DurationItem duration;
  final Function(DurationItem) onEdit;
  final Function(DurationItem) onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_horiz, size: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'edit',
          child: Row(
            children: [
              Icon(
                Icons.edit,
                size: 20,
                color: theme.colorScheme.primary,
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
                color: theme.colorScheme.error,
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
            onEdit(duration);
            break;
          case 'delete':
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
                      onDelete(duration);
                      Navigator.pop(context);
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: theme.colorScheme.error,
                    ),
                    child: const Text('Delete'),
                  ),
                ],
              ),
            );
            break;
        }
      },
    );
  }
}
