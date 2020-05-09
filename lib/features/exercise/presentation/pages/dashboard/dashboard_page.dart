import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/router/route_paths.dart';
import '../../../domain/entities/exercise.dart';
import '../../bloc/exercise_bloc.dart';
import '../../widgets/centered_loading.dart';
import '../../widgets/pp_appbar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<ExerciseBloc, ExerciseState>(
        listener: (context, state) {
          if (state is ExerciseErrorState) {
            Scaffold.of(context).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            // fetch exercises on initial state or when an exercise gets added
            if (state is ExerciseInitialState || state is ExerciseAddedState) {
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
      ),
      appBar: PPAppBar(
        titleLabel: 'Dashboard',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(RoutePaths.exerciseAdd);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final List<Exercise> exercises;

  const _Body({Key key, this.exercises}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: exercises.length,
        itemBuilder: (context, index) => _ExerciseCard(exercise: exercises[index]),
      ),
    );
  }
}

class _DummyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      elevation: 0,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(RoutePaths.exerciseAdd);
        },
        child: Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.add,
                color: Colors.grey,
              ),
              Text(
                'Add new',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const _ExerciseCard({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      exercise.name.getOrCrash(),
                      style: Theme.of(context).textTheme.headline6.apply(
                            color: Colors.grey.shade700,
                          ),
                    ),
                    Text(
                      '${exercise.oneRm.getOrCrash()} Kg',
                      style: Theme.of(context).textTheme.subtitle1.apply(
                            color: Colors.black54,
                          ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Theme.of(context).accentColor,
                        ),
                        Text(
                          'Accumulation',
                          style: Theme.of(context).textTheme.bodyText1.apply(
                                color: Theme.of(context).accentColor,
                              ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(children: [
                  Text(
                    'Month 1',
                    style: Theme.of(context).textTheme.subtitle2.apply(
                          color: Colors.black54,
                        ),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
