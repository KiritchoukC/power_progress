part of 'week_bloc.dart';

@freezed
abstract class WeekEvent with _$WeekEvent {
  const factory WeekEvent.updateNextWeek({
    @required int exerciseId,
    @required WeekEnum nextWeek,
  }) = UpdateNextWeek;
}
