import 'package:flutter/foundation.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';
import 'package:power_progress/domain/workout/i_workout_repository.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';

class RemoveHandler {
  final IWorkoutRepository workoutRepository;

  RemoveHandler({
    @required this.workoutRepository,
  });

  Future call({
    @required Function(WorkoutState) emit,
    @required int exerciseId,
  }) async {
    emit(const WorkoutState.removeInProgress());

    final output = await workoutRepository.removeByExerciseId(exerciseId);

    output.fold(
      (failure) => emit(WorkoutState.error(message: failure.toErrorMessage())),
      (_) => emit(const WorkoutState.removed()),
    );
  }
}
