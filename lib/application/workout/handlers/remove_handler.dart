import 'package:flutter/foundation.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/domain/workout/i_workout_repository.dart';
import 'package:power_progress/domain/workout/workout_failure.dart';

class RemoveHandler {
  final IWorkoutRepository workoutRepository;

  RemoveHandler({
    @required this.workoutRepository,
  });

  Stream<WorkoutState> call(Remove event) async* {
    yield const WorkoutState.removeInProgress();

    final output = await workoutRepository.removeByExerciseId(event.exerciseId);

    yield* output.fold(
      (failure) async* {
        yield WorkoutState.error(message: failure.toErrorMessage());
      },
      (r) async* {
        yield const WorkoutState.removed();
      },
    );
  }
}
