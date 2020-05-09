/// Returns the [function] result on succes or throw the [exception] on error
T tryOrCrash<T>(T Function() function, Function(dynamic) exception) {
  return () {
    try {
      return function();
    } catch (e) {
      exception(e);
      return null;
    }
  }();
}
