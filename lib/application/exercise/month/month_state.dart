part of 'month_bloc.dart';

@freezed
abstract class MonthState with _$MonthState {
  const factory MonthState.initial() = Initial;

  const factory MonthState.monthUpdateInProgress() = MonthUpdateInProgress;
  const factory MonthState.monthUpdated({@required Month month}) = MonthUpdated;

  const factory MonthState.error({@required String message}) = Error;
}
