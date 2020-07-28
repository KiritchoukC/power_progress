import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/application/workout/workout_cubit.dart';

class MonthNavigation extends StatelessWidget {
  final int currentMonth;
  final OneRm oneRm;
  final int exerciseId;

  Color _getColor(BuildContext context) => Theme.of(context).primaryColor.withAlpha(200);

  bool get isPreviousNavigatable => currentMonth > 1;

  Color _getPreviousChevronColor(BuildContext context) {
    return isPreviousNavigatable ? _getColor(context) : Colors.transparent;
  }

  Color _getNextChevronColor(BuildContext context) {
    return _getColor(context);
  }

  const MonthNavigation({
    Key key,
    @required this.currentMonth,
    @required this.oneRm,
    @required this.exerciseId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor.withAlpha(200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: _getPreviousChevronColor(context),
              ),
              onPressed: isPreviousNavigatable
                  ? () {
                      context.bloc<WorkoutCubit>().generate(
                            exerciseId: exerciseId,
                            month: Month(currentMonth - 1),
                          );
                    }
                  : null),
          Text(
            'Month $currentMonth',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                  color: _getColor(context),
                ),
          ),
          IconButton(
              icon: Icon(
                Icons.chevron_right,
                color: _getNextChevronColor(context),
              ),
              onPressed: () {
                context.bloc<WorkoutCubit>().generate(
                      exerciseId: exerciseId,
                      month: Month(currentMonth + 1),
                    );
              }),
        ],
      ),
    );
  }
}
