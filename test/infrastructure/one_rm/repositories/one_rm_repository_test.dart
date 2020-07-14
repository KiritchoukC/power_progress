import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:power_progress/domain/shared/value_objects/month.dart';
import 'package:power_progress/domain/shared/value_objects/one_rm.dart';
import 'package:power_progress/infrastructure/one_rm/datasources/i_one_rm_datasource.dart';
import 'package:power_progress/infrastructure/one_rm/models/one_rm_model.dart';
import 'package:power_progress/infrastructure/one_rm/repositories/one_rm_repository.dart';

class MockOneRmDataSource extends Mock implements IOneRmDatasource {}

void main() {
  OneRmRepository repository;
  MockOneRmDataSource datasource;

  setUp(() {
    datasource = MockOneRmDataSource();
    repository = OneRmRepository(datasource: datasource);
  });

  test('should throw when initialized with null argument', () async {
    // ACT & ASSERT
    expect(() => OneRmRepository(datasource: null), throwsA(isA<AssertionError>()));
  });

  group('addOrUpdate', () {
    // shared variables
    const exerciseId = 1;
    final month = Month(1);
    final oneRm = OneRm(100);

    test('should call [datasource.getByExerciseIdAndMonth]', () async {
      // ARRANGE
      when(datasource.getByExerciseIdAndMonth(exerciseId, month)).thenAnswer((_) async =>
          some(OneRmModel(exerciseId: exerciseId, month: month.getOrCrash(), oneRm: 100)));

      // ACT
      await repository.addOrUpdate(exerciseId, month, oneRm);

      // ASSERT
      verify(datasource.getByExerciseIdAndMonth(exerciseId, month)).called(1);
    });

    test('should return left when [datasource.getByExerciseIdAndMonth] throw an exception',
        () async {
      // ARRANGE
      when(datasource.getByExerciseIdAndMonth(exerciseId, month)).thenThrow(Exception());

      // ACT
      final output = await repository.addOrUpdate(exerciseId, month, oneRm);

      // ASSERT
      assert(output.isLeft());
    });

    test(
        'should call [datasource.add] when [datasource.getByExerciseIdAndMonth] returns right with none',
        () async {
      // ARRANGE
      when(datasource.getByExerciseIdAndMonth(exerciseId, month)).thenAnswer((_) async => none());

      // ACT
      await repository.addOrUpdate(exerciseId, month, oneRm);

      // ASSERT
      verify(datasource.add(any)).called(1);
    });

    test(
        'should not call [datasource.update] when [datasource.getByExerciseIdAndMonth] returns right with none',
        () async {
      // ARRANGE
      when(datasource.getByExerciseIdAndMonth(exerciseId, month)).thenAnswer((_) async => none());

      // ACT
      await repository.addOrUpdate(exerciseId, month, oneRm);

      // ASSERT
      verifyNever(datasource.update(any));
    });

    test(
        'should call [datasource.update] when [datasource.getByExerciseIdAndMonth] returns right with some',
        () async {
      // ARRANGE
      when(datasource.getByExerciseIdAndMonth(exerciseId, month)).thenAnswer((_) async =>
          some(OneRmModel(exerciseId: exerciseId, month: month.getOrCrash(), oneRm: 100)));

      // ACT
      await repository.addOrUpdate(exerciseId, month, oneRm);

      // ASSERT
      verify(datasource.update(any)).called(1);
    });

    test(
        'should not call [datasource.add] when [datasource.getByExerciseIdAndMonth] returns right with some',
        () async {
      // ARRANGE
      when(datasource.getByExerciseIdAndMonth(exerciseId, month)).thenAnswer((_) async =>
          some(OneRmModel(exerciseId: exerciseId, month: month.getOrCrash(), oneRm: 100)));

      // ACT
      await repository.addOrUpdate(exerciseId, month, oneRm);

      // ASSERT
      verifyNever(datasource.add(any));
    });
  });
}
