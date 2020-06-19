import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';

class OneRmRemove implements UseCase<Unit, OneRmFailure, OneRmRemoveParams> {
  final IOneRmRepository oneRmRepository;

  OneRmRemove({
    @required this.oneRmRepository,
  }) : assert(oneRmRepository != null);

  @override
  Future<Either<OneRmFailure, Unit>> call(OneRmRemoveParams params) async {
    return params.month.fold(
      () => oneRmRepository.removeByExerciseId(params.exerciseId),
      (month) => oneRmRepository.removeByExerciseIdAndMonth(params.exerciseId, month),
    );
  }
}

class OneRmRemoveParams extends Equatable {
  final int exerciseId;
  final Option<Month> month;

  const OneRmRemoveParams({
    @required this.exerciseId,
    @required this.month,
  });

  @override
  List<Object> get props => [exerciseId, month];
}
