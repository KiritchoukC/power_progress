import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import 'package:power_progress/infrastructure/onboarding/datasources/i_onboarding_datasource.dart';

class HiveOnboardingDatasource implements IOnboardingDatasource {
  final Box<bool> localStorage;

  HiveOnboardingDatasource({@required this.localStorage}) : assert(localStorage != null);

  @override
  Future<bool> get isDone async => localStorage.values.isNotEmpty;

  @override
  Future<Unit> done() async {
    await localStorage.add(true);
    return unit;
  }
}
