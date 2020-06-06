import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/repositories/i_exercise_repository.dart';

class UpdateExerciseNextMonth
    implements UseCase<Unit, ExerciseFailure, UpdateExerciseNextMonthParams> {
  final IExerciseRepository exerciseRepository;

  UpdateExerciseNextMonth({
    @required this.exerciseRepository,
  }) : assert(exerciseRepository != null);

  @override
  Future<Either<ExerciseFailure, Unit>> call(UpdateExerciseNextMonthParams params) =>
      exerciseRepository.updateNextMonth(params.exerciseId, params.nextMonth);
}

class UpdateExerciseNextMonthParams extends Equatable {
  final int exerciseId;
  final int nextMonth;

  const UpdateExerciseNextMonthParams({
    @required this.exerciseId,
    @required this.nextMonth,
  });

  @override
  List<Object> get props => [exerciseId, nextMonth];
}
