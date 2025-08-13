import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum DurationType {
  @JsonValue('none')
  none(label: 'No Type'),
  @JsonValue('birthday')
  birthday(label: 'Birthday'),
  @JsonValue('anniversary')
  anniversary(label: 'Anniversary'),
  @JsonValue('bills')
  bills(label: 'Bills');

  const DurationType({
    required this.label,
  });

  final String label;
}

@JsonEnum()
enum RepeatOption {
  @JsonValue('never')
  never(label: 'No Repeat'),
  @JsonValue('day')
  daily(label: 'Daily'),
  @JsonValue('week')
  weekly(label: 'Weekly'),
  @JsonValue('month')
  monthly(label: 'Monthly'),
  @JsonValue('year')
  yearly(label: 'Yearly');

  const RepeatOption({
    required this.label,
  });

  final String label;
}
