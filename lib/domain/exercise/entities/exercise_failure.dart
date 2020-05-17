import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'exercise_failure.freezed.dart';

@freezed
abstract class ExerciseFailure with _$ExerciseFailure {
  const factory ExerciseFailure.storageError() = StorageError;
}
