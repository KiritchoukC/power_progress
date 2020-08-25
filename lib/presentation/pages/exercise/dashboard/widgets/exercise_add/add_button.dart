import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/add/exercise_add_cubit.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/exercise_add/exercise_add_animation.dart';
import 'package:power_progress/presentation/widgets/main_button.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseAddCubit, ExerciseAddState>(
      builder: (context, state) {
        Widget addButton() => _AddButton();

        Widget validateButton() => _ValidateButton();

        Widget disabledValidateButton() => const _DisabledButton();

        return state.when(
          inital: addButton,
          formHidden: addButton,
          formShown: validateButton,
          formValidationRequired: disabledValidateButton,
          formInvalid: validateButton,
          formValid: addButton,
        );
      },
    );
  }
}

class _AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExerciseAddAnimation(
      child: MainButton(
        onPressed: () {
          context.bloc<ExerciseAddCubit>().showForm();
        },
        icon: Icons.add,
      ),
    );
  }
}

class _ValidateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExerciseAddAnimation(
      child: FloatingActionButton(
        onPressed: () {
          context.bloc<ExerciseAddCubit>().validationRequired();
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}

class _DisabledButton extends StatelessWidget {
  const _DisabledButton();

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      onPressed: null,
      child: Icon(Icons.check),
    );
  }
}
