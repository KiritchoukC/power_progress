import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/core/messages/errors.dart';
import 'package:power_progress/domain/one_rm/one_rm_failure.dart';
import 'package:power_progress/domain/shared/common_failure.dart';

part 'workout_failure.freezed.dart';

@freezed
abstract class WorkoutFailure with _$WorkoutFailure {
  const factory WorkoutFailure.previousMonthWithoutOneRm() = _PreviousMonthWithoutOneRm;
  const factory WorkoutFailure.oneRm(OneRmFailure failure) = _OneRm;
  const factory WorkoutFailure.common(CommonFailure failure) = _Common;
}

/// Extension methods of the one rm failure class
extension WorkoutFailureX on WorkoutFailure {
  String toErrorMessage() {
    return when(
      previousMonthWithoutOneRm: () => previousMonthWithoutOneRmErrorMessage,
      oneRm: (failure) => failure.toErrorMessage(),
      common: (failure) => failure.toErrorMessage(),
    );
  }
}
