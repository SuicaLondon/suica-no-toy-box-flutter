import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:suica_no_toy_box_flutter/models/duration/options.dart'
    show RepeatOption, DurationType;

class NextDataText extends StatelessWidget {
  const NextDataText({
    super.key,
    required this.date,
    required this.repeat,
    required this.type,
  });
  final DurationType type;
  final RepeatOption repeat;
  final DateTime date;

  DateTime getNextDate() {
    final now = DateTime.now();

    if (date.isAfter(now)) {
      return date;
    }

    switch (repeat) {
      case RepeatOption.daily:
        final daysSinceOriginal = now.difference(date).inDays;
        return date.add(Duration(days: daysSinceOriginal + 1));

      case RepeatOption.weekly:
        final daysSinceOriginal = now.difference(date).inDays;
        final weeksSinceOriginal = (daysSinceOriginal / 7).floor();
        return date.add(Duration(days: (weeksSinceOriginal + 1) * 7));

      case RepeatOption.monthly:
        final monthsSinceOriginal =
            (now.year - date.year) * 12 + now.month - date.month;
        return DateTime(
          date.year + ((date.month + monthsSinceOriginal + 1) ~/ 12),
          (date.month + monthsSinceOriginal + 1) % 12 == 0
              ? 12
              : (date.month + monthsSinceOriginal + 1) % 12,
          date.day,
        );

      case RepeatOption.yearly:
        final yearsSinceOriginal = now.year - date.year;
        return DateTime(
          date.year + yearsSinceOriginal + 1,
          date.month,
          date.day,
        );

      default:
        return date;
    }
  }

  String getNextDateLabel() {
    final formattedDate = DateFormat.yMMMMd().format(getNextDate());
    switch (type) {
      case DurationType.anniversary:
        return 'Next Anniversary: $formattedDate';
      case DurationType.birthday:
        return 'Next Birthday: $formattedDate';
      case DurationType.bill:
        return 'Next Bill Dates: $formattedDate';
      default:
        return 'Next: $formattedDate';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      getNextDateLabel(),
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
    );
  }
}
