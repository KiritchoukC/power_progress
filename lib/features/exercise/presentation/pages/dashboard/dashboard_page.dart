import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/router/route_paths.dart';
import '../../../domain/entities/exercise.dart';
import '../../bloc/exercise_bloc.dart';
import '../../widgets/centered_loading.dart';
import '../../widgets/pp_appbar.dart';
import 'widgets/dummy_card.dart';
import 'widgets/exercise_card.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ExerciseBloc, ExerciseState>(
        buildWhen: (previous, current) {
          return current is! ExerciseSelectionModeState;
        },
        listener: (context, state) {
          if (state is ExerciseErrorState) {
            Scaffold.of(context).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          // fetch exercises on initial state or when an exercise gets added
          if (state is! ExerciseFetchedState || state is ExerciseAddedState) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              BlocProvider.of<ExerciseBloc>(context).add(ExerciseFetchEvent());
            });
          }

          // show exercises when they're loaded
          if (state is ExerciseFetchedState) {
            return _Body(exercises: state.exercises);
          }

          return CenteredLoading();
        },
      ),
      appBar: PPAppBar(
        titleLabel: 'Dashboard',
        actions: [
          _RemoveButton(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(RoutePaths.exerciseAdd);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 40,
            ),
          ],
        ),
      ),
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

      context.bloc<ExerciseBloc>().add(ExerciseSelectionModeEvent(
          isInSelectionMode: isInSelectionMode, selectedIds: selectedExerciseIds));
    });
  }

  bool isSelected(int id) => selectedExerciseIds.contains(id);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: widget.exercises.isEmpty
          ? ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                DummyCard(),
              ],
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
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
        if (current is ExerciseFetchedState) return false;
        return true;
      },
      builder: (context, state) {
        if (state is ExerciseSelectionModeState) {
          if (state.isInSelectionMode) {
            return IconButton(
              icon: const Icon(Icons.delete),
              color: Colors.black,
              onPressed: () {
                context.bloc<ExerciseBloc>().add(ExerciseRemoveEvent(ids: state.selectedIds));
              },
            );
          }
        }

        return Container();
      },
    );
  }
}
