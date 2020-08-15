import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/add/exercise_add_cubit.dart';
import 'package:power_progress/presentation/widgets/main_button.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseAddCubit, ExerciseAddState>(
      builder: (context, state) {
        Widget addButton() {
          return MainButton(
            onPressed: () {
              context.bloc<ExerciseAddCubit>().showForm();
            },
            icon: Icons.add,
          );
        }

        Widget validateButton() {
          return FloatingActionButton(
            child: Icon(Icons.check),
            onPressed: () {
              context.bloc<ExerciseAddCubit>().hideForm();
            },
          );
        }

        return state.when(
          inital: addButton,
          formHidden: addButton,
          formShown: validateButton,
        );
      },
    );
  }
}
