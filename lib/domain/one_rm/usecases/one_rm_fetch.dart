import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';

class OneRmFetch implements UseCase<Option<OneRm>, OneRmFailure, OneRmFetchParams> {
  final IOneRmRepository oneRmRepository;

  OneRmFetch({@required this.oneRmRepository}) : assert(oneRmRepository != null);

  @override
  Future<Either<OneRmFailure, Option<OneRm>>> call(OneRmFetchParams params) async {
    return oneRmRepository.getByExerciseIdAndMonth(params.exerciseId, params.month);
  }
}

class OneRmFetchParams extends Equatable {
  final int exerciseId;
  final Month month;

  const OneRmFetchParams(this.exerciseId, this.month);

  @override
  List<Object> get props => [exerciseId, month];
}
