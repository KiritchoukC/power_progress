import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_add_state.dart';
part 'exercise_add_cubit.freezed.dart';

class ExerciseAddCubit extends Cubit<ExerciseAddState> {
  ExerciseAddCubit() : super(const ExerciseAddState.inital());

  void showForm() {
    emit(const ExerciseAddState.formShown());
  }

  void hideForm() {
    emit(const ExerciseAddState.formHidden());
  }
}
