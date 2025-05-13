import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({
    super.key,
    required this.formKey,
    required this.name,
    required this.labelText,
    required this.items,
  });
  final GlobalKey<FormBuilderState> formKey;
  final String name;
  final String labelText;
  final List<DropdownMenuItem<String>> items;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<String>(
      name: name,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.sm),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
      ),
      items: items,
      onSaved: (value) {
        formKey.currentState?.fields[name]?.didChange(value);
      },
    );
  }
}
