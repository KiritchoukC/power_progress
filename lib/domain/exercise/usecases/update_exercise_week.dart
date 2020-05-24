import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../core/usecases/usecase.dart';
import '../../core/entities/week_enum.dart';
import '../entities/exercise_failure.dart';
import '../repositories/i_exercise_repository.dart';

class UpdateExerciseWeek implements UseCase<Unit, ExerciseFailure, UpdateExerciseWeekParams> {
  final IExerciseRepository exerciseRepository;

  UpdateExerciseWeek({
    @required this.exerciseRepository,
  }) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(UpdateExerciseWeekParams params) =>
      exerciseRepository.updateWeek(params.exerciseId, params.week);
}

class UpdateExerciseWeekParams extends Equatable {
  final int exerciseId;
  final WeekEnum week;

  const UpdateExerciseWeekParams({
    @required this.exerciseId,
    @required this.week,
  });

  @override
  List<Object> get props => [exerciseId, week];
}
