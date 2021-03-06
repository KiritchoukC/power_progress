import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:power_progress/domain/onboarding/onboarding_failure.dart';
import 'package:power_progress/domain/onboarding/i_onboarding_repository.dart';
import 'package:power_progress/domain/shared/common_failure.dart';
import 'package:power_progress/infrastructure/onboarding/datasources/i_onboarding_datasource.dart';

class OnboardingRepository implements IOnboardingRepository {
  final IOnboardingDatasource datasource;

  OnboardingRepository({@required this.datasource}) : assert(datasource != null);

  @override
  Future<Either<OnboardingFailure, Unit>> done() async {
    try {
      await datasource.done();
      return right(unit);
    } on Exception {
      return left(const OnboardingFailure.common(CommonFailure.storageError()));
    }
  }

  @override
  Future<Either<OnboardingFailure, bool>> get isDone async {
    try {
      return right(await datasource.isDone);
    } on Exception {
      return left(const OnboardingFailure.common(CommonFailure.storageError()));
    }
  }
}
