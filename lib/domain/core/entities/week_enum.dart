enum WeekEnum { accumulation, intensification, realization, deload }

extension WeeksX on WeekEnum {
  String toDisplayName() {
    if (this == WeekEnum.accumulation) return "Accumulation";
    if (this == WeekEnum.intensification) return "Intensification";
    if (this == WeekEnum.realization) return "Realization";
    if (this == WeekEnum.deload) return "Deload";

    return "UNEXPECTED VALUE";
  }

  WeekEnum next() {
    final nextIndex = index + 1;

    if (nextIndex == WeekEnum.values.length) {
      return WeekEnum.accumulation;
    }

    return WeekEnum.values[nextIndex];
  }
}
