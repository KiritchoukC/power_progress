import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'workout_failure.freezed.dart';

@freezed
abstract class WorkoutFailure with _$WorkoutFailure {
  const factory WorkoutFailure.storageError() = StorageError;
  const factory WorkoutFailure.unexpectedError() = UnexpectedError;
  const factory WorkoutFailure.oneRmDoestNotExist() = OneRmDoestNotExist;
  const factory WorkoutFailure.oneRmAlreadyExists() = OneRmAlreadyExists;
  const factory WorkoutFailure.firstMonthWithoutOneRm() = FirstMonthWithoutOneRm;
}
