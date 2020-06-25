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
  const factory OneRmEvent.generateAndSave({
    @required int exerciseId,
    @required OneRm oneRm,
    @required Month month,
    @required Option<int> repsDone,
  }) = GenerateAndSave;
  const factory OneRmEvent.remove({@required int exerciseId}) = Remove;
}
