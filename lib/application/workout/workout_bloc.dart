import 'dart:async';

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

part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final GenerateHandler generateHandler;
  final MarkDoneHandler markDoneHandler;
  final MarkUndoneHandler markUndoneHandler;
  final RemoveHandler removeHandler;

  WorkoutBloc({
    @required this.generateHandler,
    @required this.markDoneHandler,
    @required this.markUndoneHandler,
    @required this.removeHandler,
  }) : super(const WorkoutState.initial());

  @override
  Stream<WorkoutState> mapEventToState(
    WorkoutEvent event,
  ) async* {
    yield* event.map(
      resetState: (ResetState value) async* {
        yield const WorkoutState.initial();
      },
      generate: generateHandler,
      markDone: markDoneHandler,
      markUndone: markUndoneHandler,
      remove: removeHandler,
    );
  }
}
