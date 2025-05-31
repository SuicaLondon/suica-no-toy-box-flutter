import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/screens/dinner/selection_chips.dart';
import 'package:suica_no_toy_box_flutter/screens/dinner/selection_wheel.dart';

class DinnerScreen extends StatefulWidget {
  const DinnerScreen({super.key});

  @override
  State<DinnerScreen> createState() => _DinnerScreenState();
}

class _DinnerScreenState extends State<DinnerScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final ValueNotifier<Set<String>> _options = ValueNotifier(<String>{});
  final StreamController<int> _selected = StreamController<int>();

  @override
  void dispose() {
    _selected.close();
    _options.dispose();
    super.dispose();
  }

  void _addOption() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      final text =
          _formKey.currentState!.fields['option']!.value.toString().trim();
      if (text.isNotEmpty && !_options.value.contains(text)) {
        _options.value = Set.from(_options.value)..add(text);
        _formKey.currentState?.fields['option']?.reset();
      }
    }
  }

  void _removeOption(String option) {
    _options.value = Set.from(_options.value)..remove(option);
  }

  void _spinWheel() {
    if (_options.value.length > 1) {
      final random = Random();
      final index = random.nextInt(_options.value.length);
      _selected.add(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('What for dinner?'),
      ),
      body: Container(
        margin: const EdgeInsets.all(Dimensions.md),
        padding: const EdgeInsets.all(Dimensions.md),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(Dimensions.md),
        ),
        child: Column(
          spacing: Dimensions.md,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What sort of dinner do you want to eat tonight?',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const Text(
                'Add your cuisine options and let us help you decide what to eat for dinner!'),
            FormBuilder(
              key: _formKey,
              child: Row(
                spacing: Dimensions.sm,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: FormBuilderTextField(
                      name: 'option',
                      decoration: const InputDecoration(
                        hintText: 'e.g., Italian, Japanese, Mexican...',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(2),
                      ]),
                      onSubmitted: (_) => _addOption(),
                    ),
                  ),
                  FilledButton(
                    onPressed: _addOption,
                    style: FilledButton.styleFrom(
                      minimumSize: const Size(100, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimensions.xs),
                      ),
                    ),
                    child: const Text('Add'),
                  ),
                ],
              ),
            ),
            RepaintBoundary(
              child: ValueListenableBuilder(
                valueListenable: _options,
                builder: (context, options, _) => SelectionChips(
                  options: options.toList(),
                  onRemove: _removeOption,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RepaintBoundary(
                child: ValueListenableBuilder(
                  valueListenable: _options,
                  builder: (context, options, child) => ElevatedButton(
                    onPressed: options.length > 1 ? _spinWheel : null,
                    child: child,
                  ),
                  child: const Text('Decide Dinner!'),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: RepaintBoundary(
                child: ValueListenableBuilder(
                  valueListenable: _options,
                  builder: (context, options, _) {
                    return SelectionWheel(
                      options: options,
                      selected: _selected.stream,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
