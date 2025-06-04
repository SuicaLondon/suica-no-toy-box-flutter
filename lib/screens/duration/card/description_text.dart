import 'package:flutter/material.dart' show Theme;
import 'package:flutter/widgets.dart';
import 'package:suica_no_toy_box_flutter/models/duration/options.dart'
    show DurationType;

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    super.key,
    required this.type,
    required this.date,
  });
  final DurationType type;
  final DateTime date;

  String? getDescription() {
    final now = DateTime.now();
    final yearsSince = now.year - date.year;

    switch (type) {
      case DurationType.anniversary:
        final suffix = _getOrdinalSuffix(yearsSince.toInt() + 1);
        return '$suffix Anniversary';
      case DurationType.birthday:
        final suffix = _getOrdinalSuffix(yearsSince.toInt() + 1);
        return '$suffix birthday';
      default:
        return null;
    }
  }

  String _getOrdinalSuffix(int number) {
    if (number >= 11 && number <= 13) {
      return '${number}th';
    }

    switch (number % 10) {
      case 1:
        return '${number}st';
      case 2:
        return '${number}nd';
      case 3:
        return '${number}rd';
      default:
        return '${number}th';
    }
  }

  @override
  Widget build(BuildContext context) {
    final description = getDescription();
    return Text(
      description ?? type.label,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
    );
  }
}
