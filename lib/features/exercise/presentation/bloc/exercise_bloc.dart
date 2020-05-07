import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/extensions/either_extensions.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/exercise.dart';
import '../../domain/usecases/add_exercise.dart';
import '../../domain/usecases/get_exercises.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final AddExercise addExercise;
  final GetExercises getExercises;

  ExerciseBloc({
    @required this.addExercise,
    @required this.getExercises,
  });

  @override
  ExerciseState get initialState => ExerciseInitialState();
  @override
  Stream<ExerciseState> mapEventToState(
    ExerciseEvent event,
  ) async* {
    if (event is ExerciseAddEvent) {
      yield* _handleAddExerciseEvent(event);
    }

    if (event is ExerciseGetEvent) {
      yield* _handleGetExerciseEvent(event);
    }
  }

  Stream<ExerciseState> _handleAddExerciseEvent(ExerciseAddEvent event) async* {
    yield ExerciseLoadingState();

    final addedExercise = await addExercise(AddExerciseParams(exercise: event.exercise));

    yield ExerciseAddLoadedState(exercise: addedExercise.getOrCrash());
  }

  Stream<ExerciseState> _handleGetExerciseEvent(ExerciseGetEvent event) async* {
    yield ExerciseLoadingState();

    final exercises = await getExercises(NoParams());

    yield ExerciseGetLoadedState(exercises: exercises.getOrCrash());
  }
}
