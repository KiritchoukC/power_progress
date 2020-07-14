import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_progress/core/domain/value_failure.dart';

part 'week_enum.freezed.dart';

@freezed
abstract class WeekEnum with _$WeekEnum {
  const factory WeekEnum.accumulation() = Accumulation;
  const factory WeekEnum.intensification() = Intensification;
  const factory WeekEnum.realization() = Realization;
  const factory WeekEnum.deload() = Deload;
}

/// Helper methods of the week enum class
class WeekEnumHelper {
  static Either<ValueFailure<WeekEnum>, WeekEnum> fromInt(int value) {
    switch (value) {
      case 0:
        return right(const WeekEnum.accumulation());
      case 1:
        return right(const WeekEnum.intensification());
      case 2:
        return right(const WeekEnum.realization());
      case 3:
        return right(const WeekEnum.deload());
      default:
        throw left(ValueFailure.wrongWeek(failedValue: value));
    }
  }
}

/// Extension methods of the week enum class
extension WeeksX on WeekEnum {
  String toDisplayName() {
    return when(
      accumulation: () => 'Accumulation',
      intensification: () => 'Intensification',
      realization: () => 'Realization',
      deload: () => 'Deload',
    );
  }

  int index() {
    return when(
      accumulation: () => 0,
      intensification: () => 1,
      realization: () => 2,
      deload: () => 3,
    );
  }

  WeekEnum next() {
    return when(
      accumulation: () => const WeekEnum.intensification(),
      intensification: () => const WeekEnum.realization(),
      realization: () => const WeekEnum.deload(),
      deload: () => const WeekEnum.accumulation(),
    );
  }

  WeekEnum previous() {
    return when(
      accumulation: () => const WeekEnum.deload(),
      intensification: () => const WeekEnum.accumulation(),
      realization: () => const WeekEnum.intensification(),
      deload: () => const WeekEnum.realization(),
    );
  }
}
