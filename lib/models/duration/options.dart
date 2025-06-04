import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum DurationType {
  @JsonValue('none')
  none(label: 'No Type'),
  @JsonValue('birthday')
  birthday(label: 'Birthday'),
  @JsonValue('anniversary')
  anniversary(label: 'Anniversary'),
  @JsonValue('bill')
  bill(label: 'Bill');

  const DurationType({
    required this.label,
  });

  final String label;
}

@JsonEnum()
enum RepeatOption {
  @JsonValue('never')
  never(label: 'No Repeat'),
  @JsonValue('daily')
  daily(label: 'Daily'),
  @JsonValue('weekly')
  weekly(label: 'Weekly'),
  @JsonValue('monthly')
  monthly(label: 'Monthly'),
  @JsonValue('yearly')
  yearly(label: 'Yearly');

  const RepeatOption({
    required this.label,
  });

  final String label;
}
