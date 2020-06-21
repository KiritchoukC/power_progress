import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/core/entities/week_enum.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_upsert.dart';
import 'package:power_progress/domain/workout/entities/accumulation_workout.dart';
import 'package:power_progress/domain/workout/entities/deload_workout.dart';
import 'package:power_progress/domain/workout/entities/intensification_workout.dart';
import 'package:power_progress/domain/workout/entities/month_workout.dart';
import 'package:power_progress/domain/workout/entities/realization_workout.dart';
import 'package:power_progress/domain/workout/entities/workout.dart';
import 'package:power_progress/domain/workout/entities/workout_done.dart';
import 'package:power_progress/domain/workout/entities/workout_failure.dart';
import 'package:power_progress/domain/workout/repositories/i_workout_repository.dart';

class GenerateWorkout implements UseCase<MonthWorkout, WorkoutFailure, GenerateWorkoutParams> {
  final IWorkoutRepository workoutRepository;
  final IOneRmRepository oneRmRepository;

  final OneRmUpsert oneRmUpsert;

  GenerateWorkout({
    @required this.workoutRepository,
    @required this.oneRmRepository,
    @required this.oneRmUpsert,
  });

  @override
  Future<Either<WorkoutFailure, MonthWorkout>> call(GenerateWorkoutParams params) async {
    Future<Either<WorkoutFailure, MonthWorkout>> _generate(
      List<WorkoutDone> workoutsDone,
      OneRm oneRm,
    ) async {
      Option<WorkoutDone> _getWorkoutDone(int exerciseId, Month month, WeekEnum week) {
        if (workoutsDone.isEmpty) return none();

        final workoutDone = workoutsDone.firstWhere(
          (x) =>
              x.month.getOrCrash() == month.getOrCrash() &&
              x.week == week &&
              x.exerciseId == exerciseId,
          orElse: () => null,
        );

        return workoutDone == null ? none() : some(workoutDone);
      }

      Workout _getWorkout(WeekEnum week, OneRm oneRm) {
        final workoutDone = _getWorkoutDone(params.exerciseId, params.month, week);

        return week.when(
          accumulation: () => AccumulationWorkout(
            month: params.month,
            oneRm: oneRm,
            isDone: workoutDone.isSome(),
            workoutDoneId: workoutDone.fold(() => none(), (a) => some(a.id)),
          ),
          intensification: () => IntensificationWorkout(
            month: params.month,
            oneRm: oneRm,
            isDone: workoutDone.isSome(),
            workoutDoneId: workoutDone.fold(() => none(), (a) => some(a.id)),
          ),
          realization: () => RealizationWorkout(
            month: params.month,
            oneRm: oneRm,
            isDone: workoutDone.isSome(),
            workoutDoneId: workoutDone.fold(() => none(), (a) => some(a.id)),
            repsDone: workoutDone.fold(() => none(), (a) => a.repsDone),
          ),
          deload: () => DeloadWorkout(
            month: params.month,
            oneRm: oneRm,
            isDone: workoutDone.isSome(),
            workoutDoneId: workoutDone.fold(() => none(), (a) => some(a.id)),
          ),
        );
      }

      bool _isPreviousDeloadDone() {
        final deloadWorkoutDone = _getWorkoutDone(
          params.exerciseId,
          Month(params.month.getOrCrash() - 1),
          const WeekEnum.deload(),
        );
        return deloadWorkoutDone.isSome();
      }

      bool _isNextAccumulationDone() {
        final accumulationWorkoutDone = _getWorkoutDone(
          params.exerciseId,
          Month(params.month.getOrCrash() + 1),
          const WeekEnum.accumulation(),
        );
        return accumulationWorkoutDone.isSome();
      }

      return right(
        MonthWorkout(
          month: params.month,
          oneRm: oneRm,
          accumulationWorkout: _getWorkout(
            const WeekEnum.accumulation(),
            oneRm,
          ) as AccumulationWorkout,
          intensificationWorkout: _getWorkout(
            const WeekEnum.intensification(),
            oneRm,
          ) as IntensificationWorkout,
          realizationWorkout: _getWorkout(
            const WeekEnum.realization(),
            oneRm,
          ) as RealizationWorkout,
          deloadWorkout: _getWorkout(
            const WeekEnum.deload(),
            oneRm,
          ) as DeloadWorkout,
          isNextAccumulationDone: _isNextAccumulationDone(),
          isPreviousDeloadDone: params.month.getOrCrash() == 1 || _isPreviousDeloadDone(),
        ),
      );
    }

    // gets all the workouts (weeks) that are done
    return workoutRepository.getWorkoutsDone(params.exerciseId).then(
          (workoutsDoneEither) => workoutsDoneEither.fold(
            // returns failure if something went wrong while gettings the workouts done
            (workoutFailure) => left(workoutFailure),
            (workoutsDone) =>
                // gets the OneRm for this exercise and this month
                oneRmRepository.getByExerciseIdAndMonth(params.exerciseId, params.month).then(
                      (oneRmEither) => oneRmEither.fold(
                        // returns the failure if something went wrong while getting the OneRm
                        (oneRmFailure) => left(_mapToWorkoutFailure(oneRmFailure)),
                        (oneRmOption) => oneRmOption.fold(
                          // if there is no one rm for this month yet, get the one rm of the previous month
                          () => oneRmRepository
                              .getByExerciseIdAndMonth(params.exerciseId, params.month.previous)
                              .then(
                                (previousOneRmEither) => previousOneRmEither.fold(
                                  // returns the failure if something went wrong while getting the previous OneRm
                                  (previousOneRmFailure) =>
                                      left(_mapToWorkoutFailure(previousOneRmFailure)),
                                  (previousOneRmOption) => previousOneRmOption.fold(
                                    // if there is still no one rm for the previous month, returns the failure
                                    () => left(const WorkoutFailure.previousMonthWithoutOneRm()),
                                    // the previous one rm is inserted for the current month, so next time, it will be found
                                    (previousOneRm) => oneRmUpsert(
                                      OneRmUpsertParams(
                                          exerciseId: params.exerciseId,
                                          month: params.month,
                                          oneRm: previousOneRm),
                                      // then call this usecase again
                                    ).then((oneRmUpsertUnit) => call(params)),
                                  ),
                                ),
                              ),
                          // if OneRm has been found, generate the workout
                          (oneRm) => _generate(workoutsDone, oneRm),
                        ),
                      ),
                    ),
          ),
        );
  }

  WorkoutFailure _mapToWorkoutFailure(OneRmFailure oneRmFailure) {
    return oneRmFailure.when(
      storageError: () => const WorkoutFailure.storageError(),
      unexpectedError: () => const WorkoutFailure.unexpectedError(),
      itemDoesNotExist: () => const WorkoutFailure.oneRmDoestNotExist(),
      itemAlreadyExists: () => const WorkoutFailure.oneRmAlreadyExists(),
    );
  }
}

class GenerateWorkoutParams extends Equatable {
  final int exerciseId;
  final Month month;

  const GenerateWorkoutParams({
    @required this.exerciseId,
    @required this.month,
  });

  @override
  List<Object> get props => [exerciseId, month];
}
