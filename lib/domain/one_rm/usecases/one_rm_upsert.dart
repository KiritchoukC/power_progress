import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/core/usecases/usecase.dart';
import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';

class OneRmUpsert implements UseCase<Unit, OneRmFailure, OneRmUpsertParams> {
  final IOneRmRepository oneRmRepository;

  OneRmUpsert({@required this.oneRmRepository}) : assert(oneRmRepository != null);

  @override
  Future<Either<OneRmFailure, Unit>> call(OneRmUpsertParams params) {
    return oneRmRepository
        .getByExerciseIdAndMonth(params.exerciseId, params.month)
        .then((oneRmEither) => oneRmEither.fold(
              (failure) async => left(failure),
              (oneRmOption) => oneRmOption.fold(
                () => oneRmRepository.add(
                  params.exerciseId,
                  params.month,
                  params.oneRm,
                ),
                (_) => oneRmRepository.update(
                  params.exerciseId,
                  params.month,
                  params.oneRm,
                ),
              ),
            ));
  }
}

class OneRmUpsertParams extends Equatable {
  final int exerciseId;
  final Month month;
  final OneRm oneRm;

  const OneRmUpsertParams(this.exerciseId, this.month, this.oneRm);

  @override
  List<Object> get props => [exerciseId, month, oneRm];
}
