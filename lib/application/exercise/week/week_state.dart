part of 'week_bloc.dart';

@freezed
abstract class WeekState with _$WeekState {
  const factory WeekState.initial({@required int exerciseId}) = Initial;

  const factory WeekState.weekUpdateInProgress({@required int exerciseId}) = WeekUpdateInProgress;
  const factory WeekState.weekUpdated({@required int exerciseId, @required Week week}) =
      WeekUpdated;

  const factory WeekState.error({@required int exerciseId, @required String message}) = Error;
}
