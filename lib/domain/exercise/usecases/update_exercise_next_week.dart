import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';

class UpdateExerciseNextWeek
    implements UseCase<Unit, ExerciseFailure, UpdateExerciseNextWeekParams> {
  final IExerciseRepository exerciseRepository;

  UpdateExerciseNextWeek({
    @required this.exerciseRepository,
  }) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(UpdateExerciseNextWeekParams params) =>
      exerciseRepository.updateNextWeek(params.exerciseId, params.nextWeek);
}

class UpdateExerciseNextWeekParams extends Equatable {
  final int exerciseId;
  final WeekEnum nextWeek;

  const UpdateExerciseNextWeekParams({
    @required this.exerciseId,
    @required this.nextWeek,
  });

  @override
  List<Object> get props => [exerciseId, nextWeek];
}
