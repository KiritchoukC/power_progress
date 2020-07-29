import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/application/exercise/exercise_cubit.dart';

class DeleteConfirmDialog extends StatelessWidget {
  final List<int> exerciseIds;

  const DeleteConfirmDialog({@required this.exerciseIds});

  @override
  Widget build(BuildContext context) {
    final String plural = (exerciseIds.length == 1) ? "exercise" : "exercises";

    return AlertDialog(
      title: Text('Delete $plural?'),
      content: Text('You are about to remove ${exerciseIds.length} $plural'),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        FlatButton(
          onPressed: () {
            context.bloc<ExerciseCubit>().remove(exerciseIdsToRemove: exerciseIds);
            Navigator.of(context).pop();
          },
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
