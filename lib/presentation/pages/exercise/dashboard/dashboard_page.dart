import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/bottom_bar.dart';

import 'package:power_progress/application/exercise/exercise_bloc.dart';
import 'package:power_progress/application/workout/workout_bloc.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/presentation/widgets/centered_loading.dart';
import 'package:power_progress/presentation/widgets/pp_appbar.dart';
import 'package:power_progress/presentation/widgets/remove_button.dart';
import 'package:power_progress/presentation/widgets/delete_confirm_dialog.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/add_button.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/dummy_card.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/exercise_card.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<WorkoutBloc, WorkoutState>(
        listener: (previous, current) {
          void fetch(_) {
            context.bloc<ExerciseBloc>().add(const ExerciseEvent.fetch());
          }

          current.maybeMap(
            markedDone: fetch,
            markedUndone: fetch,
            orElse: () {},
          );
        },
        child: BlocConsumer<ExerciseBloc, ExerciseState>(
          buildWhen: (previous, current) {
            return current.maybeWhen(
              selected: (_) => false,
              unselected: (_) => false,
              orElse: () => true,
            );
          },
          listener: (context, state) {
            state.maybeMap(
              error: (value) =>
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text(value.message))),
              orElse: () {},
            );
          },
          builder: (context, state) {
            Widget fetch(_) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                BlocProvider.of<ExerciseBloc>(context).add(const ExerciseEvent.fetch());
              });

              return const CenteredLoading();
            }

            return state.maybeMap(
              removed: fetch,
              initial: fetch,
              added: fetch,
              fetched: (value) => _Body(exercises: value.exercises),
              orElse: () => const CenteredLoading(),
            );
          },
        ),
      ),
      appBar: PPAppBar(
        titleLabel: 'Dashboard',
        actions: [
          _RemoveButton(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddButton(),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class _Body extends StatefulWidget {
  final List<Exercise> exercises;

  const _Body({Key key, this.exercises}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final List<int> selectedExerciseIds = [];

  bool isInSelectionMode = false;

  void select(int id, BuildContext context) {
    setState(() {
      if (selectedExerciseIds.contains(id)) {
        selectedExerciseIds.removeWhere((element) => element == id);
      } else {
        selectedExerciseIds.add(id);
      }

      isInSelectionMode = selectedExerciseIds.isNotEmpty;

      context.bloc<ExerciseBloc>().add(
            ExerciseEvent.selectionMode(
              isInSelectionMode: isInSelectionMode,
              selectedIds: selectedExerciseIds,
            ),
          );
    });
  }

  bool isSelected(int id) => selectedExerciseIds.contains(id);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: widget.exercises.isEmpty
          ? ListView(
              shrinkWrap: true,
              children: [
                DummyCard(),
              ],
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: widget.exercises.length,
              itemBuilder: (context, index) => ExerciseCard(
                key: Key(index.toString()),
                onSelect: () {
                  select(widget.exercises[index].id, context);
                },
                exercise: widget.exercises[index],
                isInSelectionMode: isInSelectionMode,
                isSelected: isSelected(widget.exercises[index].id),
              ),
            ),
    );
  }
}

class _RemoveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseBloc, ExerciseState>(
      condition: (previous, current) {
        return current.maybeWhen(
          fetched: (_) => false,
          orElse: () => true,
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          selected: (value) => RemoveButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return DeleteConfirmDialog(exerciseIds: value.selectedIds);
                },
              );
            },
          ),
          orElse: () => Container(),
        );
      },
    );
  }
}
