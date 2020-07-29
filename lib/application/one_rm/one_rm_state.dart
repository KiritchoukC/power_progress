part of 'one_rm_cubit.dart';

@freezed
abstract class OneRmState with _$OneRmState {
  const factory OneRmState.initial({@required int exerciseId}) = Initial;

  const factory OneRmState.fetchInProgress() = FetchInProgres;
  const factory OneRmState.fetched({@required int exerciseId, @required OneRm oneRm}) = Fetched;

  const factory OneRmState.generateAndSaveInProgress() = GenerateAndSaveInProgress;
  const factory OneRmState.generatedAndSaved({@required int exerciseId, @required OneRm oneRm}) =
      GeneratedAndSaved;

  const factory OneRmState.removeInProgress() = RemoveInProgress;
  const factory OneRmState.removed() = Removed;

  const factory OneRmState.storageError() = StorageError;
  const factory OneRmState.notFoundError() = NotFoundError;
  const factory OneRmState.alreadyExistError() = AlreadyExistError;
  const factory OneRmState.unexpectedError() = UnexpectedError;
  const factory OneRmState.noExistingDataForThisExerciseError() =
      NoExistingDataForThisExerciseError;
}

extension OneRmStateX on OneRmState {
  String toErrorMessage() {
    return maybeWhen(
      alreadyExistError: () => itemAlreadyExistsErrorMessage,
      noExistingDataForThisExerciseError: () => noExistingDataForThisExerciseErrorMessage,
      notFoundError: () => itemDoesNotExistErrorMessage,
      storageError: () => storageErrorMessage,
      unexpectedError: () => unexpectedErrorMessage,
      orElse: () => unknownErrorMessage,
    );
  }
}
