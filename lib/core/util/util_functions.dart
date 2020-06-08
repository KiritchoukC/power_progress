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

/// returns a value being a multiple of [multipleOf]
double round(double value, double multipleOf) =>
    ((value + multipleOf / 2) / multipleOf).floorToDouble() * multipleOf;
