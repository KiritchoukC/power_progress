part of 'month_bloc.dart';

@freezed
abstract class MonthEvent with _$MonthEvent {
  const factory MonthEvent.updateNextMonth({
    @required int exerciseId,
    @required Month nextMonth,
  }) = UpdateNextMonth;
  const factory MonthEvent.fetch({@required int exerciseId}) = Fetch;
}
