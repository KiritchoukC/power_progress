import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../core/util/util_functions.dart';
import 'i_onboarding_datasource.dart';

class HiveOnboardingDatasource implements IOnboardingDatasource {
  final Box<bool> localStorage;

  HiveOnboardingDatasource({@required this.localStorage}) : assert(localStorage != null);

  @override
  Future<bool> get isDone async => tryOrCrash(
        () => localStorage.values.isNotEmpty,
        (_) => throw Exception(),
      );

  @override
  Future<Unit> done() async {
    await tryOrCrash(
      () => localStorage.add(true),
      (_) => throw Exception(),
    );

    return unit;
  }
}
