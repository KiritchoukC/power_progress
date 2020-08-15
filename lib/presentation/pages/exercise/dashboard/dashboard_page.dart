import 'dart:core';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_progress/application/exercise/add/exercise_add_cubit.dart';

import 'package:power_progress/application/exercise/selection/selection_cubit.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/bottom_bar.dart';
import 'package:power_progress/application/exercise/exercise_cubit.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';
import 'package:power_progress/domain/exercise/exercise.dart';
import 'package:power_progress/presentation/pages/exercise/dashboard/widgets/exercise_add.dart';
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
      body: BlocListener<WorkoutCubit, WorkoutState>(
        listener: (previous, current) {
          void fetch(_) {
            context.bloc<ExerciseCubit>().fetch();
          }

          current.maybeMap(
            markedDone: fetch,
            markedUndone: fetch,
            orElse: () {},
          );
        },
        child: BlocBuilder<ExerciseCubit, ExerciseState>(
          builder: (context, state) {
            Widget fetch() {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                BlocProvider.of<ExerciseCubit>(context).fetch();
              });

              return const CenteredLoading();
            }

            return state.maybeWhen(
              removed: fetch,
              initial: fetch,
              added: fetch,
              fetched: (exercises) => _BodyStacked(exercises: exercises),
              orElse: () => const CenteredLoading(),
            );
          },
        ),
      ),
      appBar: PPAppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
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

class _BodyStacked extends StatelessWidget {
  final List<Exercise> exercises;

  const _BodyStacked({Key key, @required this.exercises}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseAddCubit, ExerciseAddState>(
      builder: (context, state) {
        Widget noForm() {
          return Stack(
            children: [
              SingleChildScrollView(
                child: _Body(exercises: exercises),
              ),
            ],
          );
        }

        Widget withForm() {
          return Stack(
            children: [
              SingleChildScrollView(
                child: _Body(exercises: exercises),
              ),
              GestureDetector(
                onTap: () => context.bloc<ExerciseAddCubit>().hideForm(),
              ),
              Positioned(
                bottom: -20,
                child: BlocBuilder<ExerciseAddCubit, ExerciseAddState>(
                  builder: (context, state) {
                    return state.when(
                      inital: () => Container(),
                      formShown: () => ExerciseAdd(),
                      formHidden: () => Container(),
                    );
                  },
                ),
              ),
            ],
          );
        }

        return state.when(
          inital: noForm,
          formHidden: noForm,
          formShown: withForm,
        );
      },
    );
  }
}

class _Body extends StatefulWidget {
  final List<Exercise> exercises;

  const _Body({Key key, @required this.exercises}) : super(key: key);

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

      if (isInSelectionMode) {
        context.bloc<SelectionCubit>().select(selectedIds: selectedExerciseIds);
      } else {
        context.bloc<SelectionCubit>().unselect(unselectedIds: selectedExerciseIds);
      }
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
    return BlocBuilder<SelectionCubit, SelectionState>(
      builder: (context, state) {
        return state.maybeWhen(
          selected: (selectedIds) => RemoveButton(
            onPressed: () {
              showModal(
                context: context,
                builder: (_) => DeleteConfirmDialog(exerciseIds: selectedIds),
              );
            },
          ),
          orElse: () => Container(),
        );
      },
    );
  }
}
