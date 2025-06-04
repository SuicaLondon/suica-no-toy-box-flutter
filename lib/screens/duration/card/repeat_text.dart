import 'package:flutter/material.dart' show Theme;
import 'package:flutter/widgets.dart';
import 'package:suica_no_toy_box_flutter/models/duration/options.dart'
    show RepeatOption;

class RepeatText extends StatelessWidget {
  const RepeatText({super.key, required this.repeat});
  final RepeatOption repeat;

  @override
  Widget build(BuildContext context) {
    return Text(
      repeat == RepeatOption.never ? 'Not repeat' : repeat.label,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
    );
  }
}
