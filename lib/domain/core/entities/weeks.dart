enum WeekEnum { accumulation, intensification, realization, deload }

extension WeeksX on WeekEnum {
  String toDisplayName() {
    if (this == WeekEnum.accumulation) return "Accumulation";
    if (this == WeekEnum.intensification) return "Inensification";
    if (this == WeekEnum.realization) return "Realization";
    if (this == WeekEnum.deload) return "Deload";

    return "UNEXPECTED VALUE";
  }
}
