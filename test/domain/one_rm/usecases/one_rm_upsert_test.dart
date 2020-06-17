import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:power_progress/domain/core/entities/value_objects/month.dart';
import 'package:power_progress/domain/one_rm/entities/one_rm_failure.dart';
import 'package:power_progress/domain/one_rm/repositories/i_one_rm_repository.dart';
import 'package:power_progress/domain/one_rm/usecases/one_rm_upsert.dart';
import 'package:power_progress/domain/core/entities/value_objects/one_rm.dart';

class MockOneRmRepository extends Mock implements IOneRmRepository {}

void main() {
  OneRmUpsert usecase;
  MockOneRmRepository repository;

  setUp(() {
    repository = MockOneRmRepository();
    usecase = OneRmUpsert(oneRmRepository: repository);
  });

  // shared variables
  const exerciseId = 1;
  final month = Month(1);
  final oneRm = OneRm(100);
  final params = OneRmUpsertParams(
    exerciseId: exerciseId,
    month: month,
    oneRm: oneRm,
  );

  test('should throw when initialized with null argument', () async {
    // ACT & ASSERT
    expect(() => OneRmUpsert(oneRmRepository: null), throwsA(isA<AssertionError>()));
  });

  test('should call [oneRmRepository.getByExerciseIdAndMonth]', () async {
    // ARRANGE
    when(repository.getByExerciseIdAndMonth(exerciseId, month))
        .thenAnswer((_) async => right(some(OneRm(100))));

    // ACT
    await usecase(params);

    // ASSERT
    verify(repository.getByExerciseIdAndMonth(exerciseId, month)).called(1);
  });

  test('should return left when [oneRmRepository.getByExerciseIdAndMonth] returns left', () async {
    // ARRANGE
    when(repository.getByExerciseIdAndMonth(exerciseId, month))
        .thenAnswer((_) async => left(const OneRmFailure.storageError()));

    // ACT
    final output = await usecase(params);

    // ASSERT
    assert(output.isLeft());
  });

  test(
      'should call [oneRmRepository.add] when [oneRmRepository.getByExerciseIdAndMonth] returns right with none',
      () async {
    // ARRANGE
    when(repository.getByExerciseIdAndMonth(exerciseId, month))
        .thenAnswer((_) async => right(none()));

    // ACT
    await usecase(params);

    // ASSERT
    verify(repository.add(exerciseId, month, oneRm)).called(1);
  });

  test(
      'should call [oneRmRepository.update] when [oneRmRepository.getByExerciseIdAndMonth] returns right with some',
      () async {
    // ARRANGE
    when(repository.getByExerciseIdAndMonth(exerciseId, month))
        .thenAnswer((_) async => right(some(OneRm(100))));

    // ACT
    await usecase(params);

    // ASSERT
    verify(repository.update(exerciseId, month, oneRm)).called(1);
  });
}
