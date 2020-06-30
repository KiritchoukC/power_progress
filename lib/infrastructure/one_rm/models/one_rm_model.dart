import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import 'package:power_progress/domain/core/value_objects/one_rm.dart';

part 'one_rm_model.g.dart';

@HiveType(typeId: 2)
class OneRmModel {
  @HiveField(0)
  int id;
  @HiveField(1)
  int exerciseId;
  @HiveField(2)
  int month;
  @HiveField(3)
  double oneRm;

  OneRmModel({
    @required this.exerciseId,
    @required this.month,
    @required this.oneRm,
  }) : id = 0;

  OneRmModel._({
    @required this.exerciseId,
    @required this.month,
    @required this.oneRm,
    @required this.id,
  });

  OneRm toDomain() => OneRm(oneRm);
}

extension OneRmModelCopyWithExtension on OneRmModel {
  OneRmModel copyWith({
    int exerciseId,
    int id,
    int month,
    double oneRm,
  }) {
    return OneRmModel._(
      exerciseId: exerciseId ?? this.exerciseId,
      id: id ?? this.id,
      month: month ?? this.month,
      oneRm: oneRm ?? this.oneRm,
    );
  }
}
