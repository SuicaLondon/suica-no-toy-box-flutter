import 'package:equatable/equatable.dart' show Equatable;
import 'package:suica_no_toy_box_flutter/screens/duration/options.dart'
    show DurationType, RepeatOption;

class DurationItem extends Equatable {
  const DurationItem({
    required this.name,
    required this.type,
    required this.repeat,
    required this.date,
  });
  final String name;
  final DurationType type;
  final RepeatOption repeat;
  final DateTime date;

  @override
  List<Object?> get props => [name, type, repeat, date];
}
