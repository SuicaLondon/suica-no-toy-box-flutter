enum DurationType {
  none(label: 'No Type'),
  birthday(label: 'Birthday'),
  anniversary(label: 'Anniversary'),
  bill(label: 'Bill');

  const DurationType({
    required this.label,
  });

  final String label;
}

enum RepeatOption {
  never(label: 'No Repeat'),
  daily(label: 'Daily'),
  weekly(label: 'Weekly'),
  monthly(label: 'Monthly'),
  yearly(label: 'Yearly');

  const RepeatOption({
    required this.label,
  });

  final String label;
}
