import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  @override
  ExerciseState get initialState => ExerciseInitial();
  @override
  Stream<ExerciseState> mapEventToState(
    ExerciseEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
