part of 'one_rm_bloc.dart';

@freezed
abstract class OneRmState with _$OneRmState {
  const factory OneRmState.initial() = Initial;

  const factory OneRmState.fetchInProgress() = FetchInProgres;
  const factory OneRmState.fetched({@required OneRm oneRm}) = Fetched;

  const factory OneRmState.generateAndSaveInProgress() = GenerateAndSaveInProgress;
  const factory OneRmState.generatedAndSaved() = GeneratedAndSaved;

  const factory OneRmState.storageError() = StorageError;
  const factory OneRmState.notFoundError() = NotFoundError;
  const factory OneRmState.alreadyExistError() = AlreadyExistError;
  const factory OneRmState.unexpectedError() = UnexpectedError;
}
