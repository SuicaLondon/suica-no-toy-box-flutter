import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart'
    show Dimensions;
import 'package:suica_no_toy_box_flutter/models/duration/duration_item.dart'
    show DurationItem;
import 'package:suica_no_toy_box_flutter/screens/duration/card/date_text.dart'
    show DateText;
import 'package:suica_no_toy_box_flutter/screens/duration/card/description_text.dart'
    show DescriptionText;
import 'package:suica_no_toy_box_flutter/screens/duration/card/next_data_text.dart'
    show NextDataText;
import 'package:suica_no_toy_box_flutter/screens/duration/card/repeat_text.dart'
    show RepeatText;
import 'package:suica_no_toy_box_flutter/screens/duration/more_menu.dart';

class DurationCard extends StatelessWidget {
  const DurationCard({super.key, required this.duration});
  final DurationItem duration;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.md),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
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
                  MoreMenu(duration: duration),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NextDataText(
                    date: duration.date,
                    repeat: duration.repeat,
                    type: duration.type,
                  ),
                  RepeatText(repeat: duration.repeat),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateText(date: duration.date),
                  DescriptionText(
                    type: duration.type,
                    date: duration.date,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
