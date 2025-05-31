import 'package:flutter/material.dart';

class SelectionChips extends StatelessWidget {
  const SelectionChips({
    super.key,
    required this.options,
    required this.onRemove,
  });
  final List<String> options;
  final Function(String) onRemove;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Your Options:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Wrap(
          spacing: 8,
          children: options
              .map((option) => Chip(
                    label: Text(option),
                    onDeleted: () => onRemove(option),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
