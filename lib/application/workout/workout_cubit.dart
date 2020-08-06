import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:power_progress/application/workout/handlers/generate_handler.dart';
import 'package:power_progress/application/workout/handlers/mark_done_handler.dart';
import 'package:power_progress/application/workout/handlers/mark_undone_handler.dart';
import 'package:power_progress/application/workout/handlers/remove_handler.dart';
import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/domain/shared/week_enum.dart';
import 'package:power_progress/domain/exercise/value_objects/incrementation.dart';
import 'package:power_progress/domain/workout/month_workout.dart';

part 'workout_state.dart';
part 'workout_cubit.freezed.dart';

class WorkoutCubit extends Cubit<WorkoutState> {
  final GenerateHandler generateHandler;
  final MarkDoneHandler markDoneHandler;
  final MarkUndoneHandler markUndoneHandler;
  final RemoveHandler removeHandler;

  WorkoutCubit({
    @required this.generateHandler,
    @required this.markDoneHandler,
    @required this.markUndoneHandler,
    @required this.removeHandler,
  }) : super(const WorkoutState.initial());

  void generate({
    @required int exerciseId,
    @required Month month,
  }) =>
      generateHandler(
        emit: emit,
        exerciseId: exerciseId,
        month: month,
      );

  void markDone({
    @required int exerciseId,
    @required Month month,
    @required WeekEnum week,
    @required Option<int> repsDone,
    @required OneRm oneRm,
    @required Incrementation incrementation,
  }) =>
      markDoneHandler(
        emit: emit,
        exerciseId: exerciseId,
        month: month,
        week: week,
        repsDone: repsDone,
        oneRm: oneRm,
        incrementation: incrementation,
      );

  void markUndone({
    @required int exerciseId,
    @required Option<int> id,
    @required Month month,
    @required WeekEnum week,
    @required OneRm oneRm,
    @required Incrementation incrementation,
  }) =>
      markUndoneHandler(
        emit: emit,
        id: id,
        exerciseId: exerciseId,
        month: month,
        week: week,
        oneRm: oneRm,
        incrementation: incrementation,
      );

  void remove({
    @required int exerciseId,
  }) =>
      removeHandler(
        emit: emit,
        exerciseId: exerciseId,
      );

  void resetState() => emit(const WorkoutState.initial());
}
