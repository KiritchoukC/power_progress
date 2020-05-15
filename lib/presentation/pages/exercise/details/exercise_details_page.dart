import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';

import '../../../../application/exercise/exercise_bloc.dart';
import '../../../widgets/pp_appbar.dart';
import '../../../widgets/remove_button.dart';

class ExerciseDetailsPageArguments {
  final Exercise exercise;

  ExerciseDetailsPageArguments({@required this.exercise});
}

class ExerciseDetailsPage extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailsPage({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseBloc, ExerciseState>(
      listener: (context, state) {
        if (state is ExerciseRemovedState) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: PPAppBar(
          titleLabel: exercise.name.getOrCrash(),
          actions: [
            RemoveButton(
              onPressed: () {
                context.bloc<ExerciseBloc>().add(ExerciseRemoveEvent(ids: [exercise.id]));
              },
            )
          ],
        ),
        body: Container(),
      ),
    );
  }
}
