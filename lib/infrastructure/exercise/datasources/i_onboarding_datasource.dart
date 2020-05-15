import 'package:dartz/dartz.dart';

abstract class IOnboardingDatasource {
  Future<Unit> done();
  Future<bool> get isDone;
}
