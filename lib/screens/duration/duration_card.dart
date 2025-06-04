import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart'
    show Dimensions;
import 'package:suica_no_toy_box_flutter/screens/duration/duration_item.dart'
    show DurationItem;
import 'package:suica_no_toy_box_flutter/screens/duration/more_menu.dart';
import 'package:suica_no_toy_box_flutter/screens/duration/options.dart'
    show RepeatOption;

class DurationCard extends StatelessWidget {
  const DurationCard({
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
    final date = duration.date;
    final formattedDate = DateFormat.yMMMMEEEEd().format(date);
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.md),
        child: Column(
          spacing: Dimensions.sm,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  duration.name,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                MoreMenu(
                  duration: duration,
                  onEdit: onEdit,
                  onDelete: onDelete,
                ),
              ],
            ),
            Text(
              duration.repeat == RepeatOption.never
                  ? 'Not repeat'
                  : duration.repeat.label,
              style: theme.textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            Row(
              spacing: Dimensions.xs,
              children: [
                Icon(Icons.calendar_today,
                    size: 18,
                    color: Theme.of(context).colorScheme.onSurfaceVariant),
                Text(
                  formattedDate,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
