part of 'week_bloc.dart';

@freezed
abstract class WeekState with _$WeekState {
  const factory WeekState.initial() = Initial;

  const factory WeekState.weekUpdateInProgress() = WeekUpdateInProgress;
  const factory WeekState.weekUpdated({@required Week week}) = WeekUpdated;

  const factory WeekState.error({@required String message}) = Error;
}
