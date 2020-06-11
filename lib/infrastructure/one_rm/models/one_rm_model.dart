import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';

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
  });

  OneRm toEntity() => OneRm(oneRm);
}
