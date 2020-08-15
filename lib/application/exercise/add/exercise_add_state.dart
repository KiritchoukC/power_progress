part of 'exercise_add_cubit.dart';

@freezed
abstract class ExerciseAddState with _$ExerciseAddState {
  const factory ExerciseAddState.inital() = _Initial;
  const factory ExerciseAddState.formShown() = _FormShown;
  const factory ExerciseAddState.formHidden() = _FormHidden;
  const factory ExerciseAddState.formValidationRequired() = _FormValidationRequired;
  const factory ExerciseAddState.formValid() = _FormValid;
  const factory ExerciseAddState.formInvalid() = _FormInvalid;
}
