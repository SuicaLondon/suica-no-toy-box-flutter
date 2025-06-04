import 'package:flutter/material.dart' show Icons, Theme;
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart'
    show Dimensions;

class DateText extends StatelessWidget {
  const DateText({super.key, required this.date});
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat.yMMMMEEEEd().format(date);
    return Row(
      spacing: Dimensions.xs,
      children: [
        Icon(Icons.calendar_today,
            size: 18, color: Theme.of(context).colorScheme.onSurfaceVariant),
        Text(
          formattedDate,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
