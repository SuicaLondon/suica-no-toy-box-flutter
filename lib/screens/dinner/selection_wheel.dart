import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class SelectionWheel extends StatelessWidget {
  const SelectionWheel({
    super.key,
    required this.options,
    required this.controller,
  });
  final Set<String> options;
  final StreamController<int> controller;

  @override
  Widget build(BuildContext context) {
    if (options.length <= 1) return const SizedBox.shrink();
    final optionsList = options.toList();
    return FortuneWheel(
      selected: controller.stream,
      animateFirst: false,
      items: options.map((option) {
        final color = Colors
            .primaries[optionsList.indexOf(option) % Colors.primaries.length];
        return FortuneItem(
          child: Text(option),
          style: FortuneItemStyle(
            color: color,
            borderColor: Colors.transparent,
          ),
        );
      }).toList(),
      indicators: <FortuneIndicator>[
        FortuneIndicator(
          alignment: Alignment.topCenter,
          child: TriangleIndicator(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
