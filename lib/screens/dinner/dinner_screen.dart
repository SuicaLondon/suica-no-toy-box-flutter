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

class _DinnerScreenState extends State<DinnerScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormBuilderState>();
  final ValueNotifier<Set<String>> _options = ValueNotifier(<String>{});
  final StreamController<int> _spinWheelController = StreamController<int>();
  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _spinWheelController.close();
    _options.dispose();
    _animationController.dispose();
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
      _spinWheelController.add(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('What for dinner?'),
        elevation: 0,
      ),
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Container(
            margin: const EdgeInsets.all(Dimensions.md),
            padding: const EdgeInsets.all(Dimensions.md),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(Dimensions.md),
              boxShadow: [
                BoxShadow(
                  color: theme.shadowColor.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              spacing: Dimensions.lg,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What sort of dinner do you want to eat tonight?',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
                Text(
                  'Add your cuisine options and let us help you decide what to eat for dinner!',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.sm),
                    side: BorderSide(
                      color: theme.colorScheme.outline.withValues(alpha: 0.2),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(Dimensions.sm),
                    child: FormBuilder(
                      key: _formKey,
                      child: Row(
                        spacing: Dimensions.sm,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: FormBuilderTextField(
                              name: 'option',
                              decoration: InputDecoration(
                                hintText: 'e.g., Italian, Japanese, Mexican...',
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.xs),
                                ),
                                contentPadding:
                                    const EdgeInsets.all(Dimensions.sm),
                              ),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(),
                                FormBuilderValidators.minLength(2),
                              ]),
                              onSubmitted: (_) => _addOption(),
                            ),
                          ),
                          FilledButton.icon(
                            onPressed: _addOption,
                            style: FilledButton.styleFrom(
                              minimumSize: const Size(100, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.xs),
                              ),
                            ),
                            icon: const Icon(Icons.add),
                            label: const Text('Add'),
                          ),
                        ],
                      ),
                    ),
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
                      builder: (context, options, child) => FilledButton.icon(
                        onPressed: options.length > 1 ? _spinWheel : null,
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: Dimensions.md),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Dimensions.sm),
                          ),
                        ),
                        icon: const Icon(Icons.casino),
                        label: child ?? const Text('Decide Dinner!'),
                      ),
                      child: const Text('Decide Dinner!'),
                    ),
                  ),
                ),
                Expanded(
                  child: RepaintBoundary(
                    child: ValueListenableBuilder(
                      valueListenable: _options,
                      builder: (context, options, _) {
                        return SelectionWheel(
                          options: options,
                          controller: _spinWheelController,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
