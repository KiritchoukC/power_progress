import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/foundation.dart';

part 'exercise.g.dart';

@CopyWith()
class Exercise {
  final int id;
  final double oneRm;
  final String name;
  final double incrementation;
  final String note;

  Exercise({
    @required this.id,
    @required this.oneRm,
    @required this.name,
    @required this.incrementation,
    this.note,
  });
}
