import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart'
    show Dimensions;
import 'package:suica_no_toy_box_flutter/constants/form_keys.dart'
    show DurationFormKeys;
import 'package:suica_no_toy_box_flutter/screens/duration/duration_item.dart'
    show DurationItem;
import 'package:suica_no_toy_box_flutter/screens/duration/options.dart'
    show DurationType, RepeatOption;

class NewDurationDialog extends StatefulWidget {
  const NewDurationDialog({
    super.key,
    this.name,
    this.type,
    this.repeat,
    this.initialDate,
  });
  final String? name;
  final DurationType? type;
  final RepeatOption? repeat;
  final DateTime? initialDate;

  @override
  State<NewDurationDialog> createState() => _NewDurationDialogState();
}

class _NewDurationDialogState extends State<NewDurationDialog> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final ValueNotifier<bool> _disableRepeat = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(Dimensions.sm),
      borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
    );
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.md)),
      title: const Text('Add New Duration'),
      content: SizedBox(
        width: 350,
        child: FormBuilder(
          key: _formKey,
          child: Column(
            spacing: Dimensions.md,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormBuilderTextField(
                name: DurationFormKeys.name,
                initialValue: widget.name,
                validator: FormBuilderValidators.required(),
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: border,
                ),
              ),
              Row(
                spacing: Dimensions.md,
                children: [
                  Expanded(
                    child: FormBuilderDropdown<DurationType>(
                      name: DurationFormKeys.type,
                      initialValue: widget.type,
                      decoration: InputDecoration(
                        labelText: 'Type',
                        border: border,
                      ),
                      items: DurationType.values
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.label),
                              ))
                          .toList(),
                      onChanged: (val) {
                        final fields = _formKey.currentState?.fields;
                        switch (val) {
                          case DurationType.none:
                            fields?[DurationFormKeys.repeat]
                                ?.didChange(RepeatOption.never);
                            _disableRepeat.value = false;
                            break;
                          case DurationType.birthday:
                            fields?[DurationFormKeys.repeat]
                                ?.didChange(RepeatOption.yearly);
                            _disableRepeat.value = true;
                            break;
                          case DurationType.anniversary:
                            fields?[DurationFormKeys.repeat]
                                ?.didChange(RepeatOption.yearly);
                            _disableRepeat.value = true;
                            break;
                          case DurationType.bill:
                            fields?[DurationFormKeys.repeat]
                                ?.didChange(RepeatOption.monthly);
                            _disableRepeat.value = true;
                            break;
                          default:
                            break;
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: ValueListenableBuilder(
                        valueListenable: _disableRepeat,
                        builder: (context, disableRepeat, child) {
                          print(disableRepeat);
                          return FormBuilderDropdown<RepeatOption>(
                            name: DurationFormKeys.repeat,
                            initialValue: widget.repeat,
                            enabled: !disableRepeat,
                            decoration: InputDecoration(
                              labelText: 'Repeat',
                              border: border,
                            ),
                            items: RepeatOption.values
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e.label),
                                    ))
                                .toList(),
                          );
                        }),
                  ),
                ],
              ),
              FormBuilderDateTimePicker(
                name: DurationFormKeys.date,
                inputType: InputType.date,
                decoration: InputDecoration(
                  labelText: 'Date',
                  border: border,
                ),
                initialValue: widget.initialDate ?? DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
                validator: FormBuilderValidators.required(),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      final fields = _formKey.currentState!.fields;
                      context.pop(DurationItem(
                        name: fields['name']!.value,
                        type: fields['type']!.value,
                        repeat: fields['repeat']!.value,
                        date: fields['date']!.value,
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimensions.sm),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: Dimensions.md),
                  ),
                  child: const Text('Add Duration'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
