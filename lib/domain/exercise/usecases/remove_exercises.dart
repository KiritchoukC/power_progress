import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/workout/usecases/remove_workout_done.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';

class RemoveExercises implements UseCase<Unit, ExerciseFailure, RemoveExercisesParams> {
  final IExerciseRepository exerciseRepository;
  final RemoveWorkoutDone removeWorkoutDone;

  RemoveExercises({
    @required this.exerciseRepository,
    @required this.removeWorkoutDone,
  }) : assert(exerciseRepository != null && removeWorkoutDone != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(RemoveExercisesParams params) async {
    final exerciseRemovedEither = await exerciseRepository.remove(params.ids);

    return exerciseRemovedEither.fold((l) => left(l), (r) {
      // remove workout done persisted data related to this exercise
      return right(r);
    });
  }
}

class RemoveExercisesParams extends Equatable {
  final List<int> ids;

  const RemoveExercisesParams({
    @required this.ids,
  });

  @override
  List<Object> get props => [ids];
}
