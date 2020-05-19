import 'package:dartz/dartz.dart';

import '../../../domain/core/entities/weeks.dart';

abstract class IWorkoutDatasource {
  Future<Unit> markDone(int exerciseId, int month, WeekEnum week);
  Future<List<Map<int, WeekEnum>>> getWorkoutsDone(int exerciseId);
  Future<Unit> remove(int exerciseId);
}
