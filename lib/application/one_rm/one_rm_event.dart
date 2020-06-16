part of 'one_rm_bloc.dart';

@freezed
abstract class OneRmEvent with _$OneRmEvent {
  const factory OneRmEvent.fetch({
    @required int exerciseId,
    @required Month month,
  }) = Fetch;
  const factory OneRmEvent.upsert({
    @required int exerciseId,
    @required Month month,
    @required OneRm oneRm,
  }) = Upsert;
}
