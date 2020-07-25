part of 'month_cubit.dart';

@freezed
abstract class MonthState with _$MonthState {
  const factory MonthState.initial({@required int exerciseId}) = Initial;

  const factory MonthState.monthUpdateInProgress({@required int exerciseId}) =
      MonthUpdateInProgress;
  const factory MonthState.monthUpdated({@required int exerciseId, @required Month month}) =
      MonthUpdated;

  const factory MonthState.fetchInProgress({@required int exerciseId}) = FetchInProgress;
  const factory MonthState.fetched({@required int exerciseId, @required Month month}) = Fetched;

  const factory MonthState.error({@required int exerciseId, @required String message}) = Error;
}
