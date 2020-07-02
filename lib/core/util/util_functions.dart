/// returns a value being a multiple of [multipleOf]
double round(double value, double multipleOf) =>
    ((value + multipleOf / 2) / multipleOf).floorToDouble() * multipleOf;
