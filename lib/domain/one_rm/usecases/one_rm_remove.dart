import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/exercise/entities/exercise.dart';
import 'package:power_progress/domain/exercise/entities/exercise_failure.dart';
import 'package:power_progress/domain/exercise/usecases/exercise_fetch_by_id.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_upsert.dart';
import 'package:power_progress/domain/workout/entities/workout.dart';

class OneRmRemove implements UseCase<Unit, OneRmFailure, OneRmRemoveParams> {
  final IOneRmRepository oneRmRepository;

  OneRmRemove({
    @required this.oneRmRepository,
  }) : assert(oneRmRepository != null);

  @override
  Future<Either<OneRmFailure, Unit>> call(OneRmRemoveParams params) async {
    return oneRmRepository.removeByExerciseId(params.exerciseId);
  }
}

class OneRmRemoveParams extends Equatable {
  final int exerciseId;

  const OneRmRemoveParams({
    @required this.exerciseId,
  });

  @override
  List<Object> get props => [exerciseId];
}
