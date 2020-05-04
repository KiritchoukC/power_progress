class UnexpectedValueError extends Error {
  UnexpectedValueError();

  @override
  String toString() {
    return Error.safeToString('Encountered a Failure at an unrecoverable point. Terminating.');
  }
}
