import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/extensions/either_extensions.dart';
import '../../domain/entities/exercise.dart';
import '../../domain/usecases/add_exercise.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final AddExercise addExercise;

  ExerciseBloc({@required this.addExercise});

  @override
  ExerciseState get initialState => ExerciseInitialState();
  @override
  Stream<ExerciseState> mapEventToState(
    ExerciseEvent event,
  ) async* {
    if (event is AddExerciseEvent) {
      yield* _handleAddExerciseEvent(event);
    }
  }

  Stream<ExerciseState> _handleAddExerciseEvent(AddExerciseEvent event) async* {
    yield AddExerciseLoadingState();

    final addedExercise = await addExercise(AddExerciseParams(exercise: event.exercise));

    yield AddExerciseLoadedState(exercise: addedExercise.getOrCrash());
  }
}
