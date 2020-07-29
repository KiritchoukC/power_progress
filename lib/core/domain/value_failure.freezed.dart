// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>() {
    return Empty<T>();
  }

// ignore: unused_element
  NumberTooLarge<T> numberTooLarge<T>(
      {@required T failedValue, @required num max}) {
    return NumberTooLarge<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  NumberUnderZero<T> numberUnderZero<T>({@required T failedValue}) {
    return NumberUnderZero<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NotANumber<T> notANumber<T>({@required dynamic failedValue}) {
    return NotANumber<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  WrongWeek<T> wrongWeek<T>({@required dynamic failedValue}) {
    return WrongWeek<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result numberUnderZero(T failedValue),
    @required Result notANumber(dynamic failedValue),
    @required Result wrongWeek(dynamic failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(),
    Result numberTooLarge(T failedValue, num max),
    Result numberUnderZero(T failedValue),
    Result notANumber(dynamic failedValue),
    Result wrongWeek(dynamic failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result numberUnderZero(NumberUnderZero<T> value),
    @required Result notANumber(NotANumber<T> value),
    @required Result wrongWeek(WrongWeek<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result numberUnderZero(NumberUnderZero<T> value),
    Result notANumber(NotANumber<T> value),
    Result wrongWeek(WrongWeek<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

class _$ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result numberUnderZero(T failedValue),
    @required Result notANumber(dynamic failedValue),
    @required Result wrongWeek(dynamic failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(),
    Result numberTooLarge(T failedValue, num max),
    Result numberUnderZero(T failedValue),
    Result notANumber(dynamic failedValue),
    Result wrongWeek(dynamic failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result numberUnderZero(NumberUnderZero<T> value),
    @required Result notANumber(NotANumber<T> value),
    @required Result wrongWeek(WrongWeek<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result numberUnderZero(NumberUnderZero<T> value),
    Result notANumber(NotANumber<T> value),
    Result wrongWeek(WrongWeek<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  T get failedValue;
  int get max;
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
}

class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;
}

class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result numberUnderZero(T failedValue),
    @required Result notANumber(dynamic failedValue),
    @required Result wrongWeek(dynamic failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(),
    Result numberTooLarge(T failedValue, num max),
    Result numberUnderZero(T failedValue),
    Result notANumber(dynamic failedValue),
    Result wrongWeek(dynamic failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result numberUnderZero(NumberUnderZero<T> value),
    @required Result notANumber(NotANumber<T> value),
    @required Result wrongWeek(WrongWeek<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result numberUnderZero(NumberUnderZero<T> value),
    Result notANumber(NotANumber<T> value),
    Result wrongWeek(WrongWeek<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty() = _$Empty<T>;
}

abstract class $NumberTooLargeCopyWith<T, $Res> {
  factory $NumberTooLargeCopyWith(
          NumberTooLarge<T> value, $Res Function(NumberTooLarge<T>) then) =
      _$NumberTooLargeCopyWithImpl<T, $Res>;
  $Res call({T failedValue, num max});
}

class _$NumberTooLargeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NumberTooLargeCopyWith<T, $Res> {
  _$NumberTooLargeCopyWithImpl(
      NumberTooLarge<T> _value, $Res Function(NumberTooLarge<T>) _then)
      : super(_value, (v) => _then(v as NumberTooLarge<T>));

  @override
  NumberTooLarge<T> get _value => super._value as NumberTooLarge<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(NumberTooLarge<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as num,
    ));
  }
}

class _$NumberTooLarge<T>
    with DiagnosticableTreeMixin
    implements NumberTooLarge<T> {
  const _$NumberTooLarge({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final num max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.numberTooLarge(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.numberTooLarge'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberTooLarge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $NumberTooLargeCopyWith<T, NumberTooLarge<T>> get copyWith =>
      _$NumberTooLargeCopyWithImpl<T, NumberTooLarge<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result numberUnderZero(T failedValue),
    @required Result notANumber(dynamic failedValue),
    @required Result wrongWeek(dynamic failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return numberTooLarge(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(),
    Result numberTooLarge(T failedValue, num max),
    Result numberUnderZero(T failedValue),
    Result notANumber(dynamic failedValue),
    Result wrongWeek(dynamic failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result numberUnderZero(NumberUnderZero<T> value),
    @required Result notANumber(NotANumber<T> value),
    @required Result wrongWeek(WrongWeek<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return numberTooLarge(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result numberUnderZero(NumberUnderZero<T> value),
    Result notANumber(NotANumber<T> value),
    Result wrongWeek(WrongWeek<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(this);
    }
    return orElse();
  }
}

abstract class NumberTooLarge<T> implements ValueFailure<T> {
  const factory NumberTooLarge({@required T failedValue, @required num max}) =
      _$NumberTooLarge<T>;

  T get failedValue;
  num get max;
  $NumberTooLargeCopyWith<T, NumberTooLarge<T>> get copyWith;
}

abstract class $NumberUnderZeroCopyWith<T, $Res> {
  factory $NumberUnderZeroCopyWith(
          NumberUnderZero<T> value, $Res Function(NumberUnderZero<T>) then) =
      _$NumberUnderZeroCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$NumberUnderZeroCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NumberUnderZeroCopyWith<T, $Res> {
  _$NumberUnderZeroCopyWithImpl(
      NumberUnderZero<T> _value, $Res Function(NumberUnderZero<T>) _then)
      : super(_value, (v) => _then(v as NumberUnderZero<T>));

  @override
  NumberUnderZero<T> get _value => super._value as NumberUnderZero<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NumberUnderZero<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$NumberUnderZero<T>
    with DiagnosticableTreeMixin
    implements NumberUnderZero<T> {
  const _$NumberUnderZero({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.numberUnderZero(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.numberUnderZero'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberUnderZero<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NumberUnderZeroCopyWith<T, NumberUnderZero<T>> get copyWith =>
      _$NumberUnderZeroCopyWithImpl<T, NumberUnderZero<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result numberUnderZero(T failedValue),
    @required Result notANumber(dynamic failedValue),
    @required Result wrongWeek(dynamic failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return numberUnderZero(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(),
    Result numberTooLarge(T failedValue, num max),
    Result numberUnderZero(T failedValue),
    Result notANumber(dynamic failedValue),
    Result wrongWeek(dynamic failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberUnderZero != null) {
      return numberUnderZero(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result numberUnderZero(NumberUnderZero<T> value),
    @required Result notANumber(NotANumber<T> value),
    @required Result wrongWeek(WrongWeek<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return numberUnderZero(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result numberUnderZero(NumberUnderZero<T> value),
    Result notANumber(NotANumber<T> value),
    Result wrongWeek(WrongWeek<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberUnderZero != null) {
      return numberUnderZero(this);
    }
    return orElse();
  }
}

abstract class NumberUnderZero<T> implements ValueFailure<T> {
  const factory NumberUnderZero({@required T failedValue}) =
      _$NumberUnderZero<T>;

  T get failedValue;
  $NumberUnderZeroCopyWith<T, NumberUnderZero<T>> get copyWith;
}

abstract class $NotANumberCopyWith<T, $Res> {
  factory $NotANumberCopyWith(
          NotANumber<T> value, $Res Function(NotANumber<T>) then) =
      _$NotANumberCopyWithImpl<T, $Res>;
  $Res call({dynamic failedValue});
}

class _$NotANumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotANumberCopyWith<T, $Res> {
  _$NotANumberCopyWithImpl(
      NotANumber<T> _value, $Res Function(NotANumber<T>) _then)
      : super(_value, (v) => _then(v as NotANumber<T>));

  @override
  NotANumber<T> get _value => super._value as NotANumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NotANumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as dynamic,
    ));
  }
}

class _$NotANumber<T> with DiagnosticableTreeMixin implements NotANumber<T> {
  const _$NotANumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final dynamic failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.notANumber(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.notANumber'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotANumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NotANumberCopyWith<T, NotANumber<T>> get copyWith =>
      _$NotANumberCopyWithImpl<T, NotANumber<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result numberUnderZero(T failedValue),
    @required Result notANumber(dynamic failedValue),
    @required Result wrongWeek(dynamic failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return notANumber(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(),
    Result numberTooLarge(T failedValue, num max),
    Result numberUnderZero(T failedValue),
    Result notANumber(dynamic failedValue),
    Result wrongWeek(dynamic failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notANumber != null) {
      return notANumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result numberUnderZero(NumberUnderZero<T> value),
    @required Result notANumber(NotANumber<T> value),
    @required Result wrongWeek(WrongWeek<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return notANumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result numberUnderZero(NumberUnderZero<T> value),
    Result notANumber(NotANumber<T> value),
    Result wrongWeek(WrongWeek<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notANumber != null) {
      return notANumber(this);
    }
    return orElse();
  }
}

abstract class NotANumber<T> implements ValueFailure<T> {
  const factory NotANumber({@required dynamic failedValue}) = _$NotANumber<T>;

  dynamic get failedValue;
  $NotANumberCopyWith<T, NotANumber<T>> get copyWith;
}

abstract class $WrongWeekCopyWith<T, $Res> {
  factory $WrongWeekCopyWith(
          WrongWeek<T> value, $Res Function(WrongWeek<T>) then) =
      _$WrongWeekCopyWithImpl<T, $Res>;
  $Res call({dynamic failedValue});
}

class _$WrongWeekCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $WrongWeekCopyWith<T, $Res> {
  _$WrongWeekCopyWithImpl(
      WrongWeek<T> _value, $Res Function(WrongWeek<T>) _then)
      : super(_value, (v) => _then(v as WrongWeek<T>));

  @override
  WrongWeek<T> get _value => super._value as WrongWeek<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(WrongWeek<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as dynamic,
    ));
  }
}

class _$WrongWeek<T> with DiagnosticableTreeMixin implements WrongWeek<T> {
  const _$WrongWeek({@required this.failedValue}) : assert(failedValue != null);

  @override
  final dynamic failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.wrongWeek(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.wrongWeek'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WrongWeek<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $WrongWeekCopyWith<T, WrongWeek<T>> get copyWith =>
      _$WrongWeekCopyWithImpl<T, WrongWeek<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result numberUnderZero(T failedValue),
    @required Result notANumber(dynamic failedValue),
    @required Result wrongWeek(dynamic failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return wrongWeek(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(),
    Result numberTooLarge(T failedValue, num max),
    Result numberUnderZero(T failedValue),
    Result notANumber(dynamic failedValue),
    Result wrongWeek(dynamic failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongWeek != null) {
      return wrongWeek(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result numberUnderZero(NumberUnderZero<T> value),
    @required Result notANumber(NotANumber<T> value),
    @required Result wrongWeek(WrongWeek<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(numberTooLarge != null);
    assert(numberUnderZero != null);
    assert(notANumber != null);
    assert(wrongWeek != null);
    return wrongWeek(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result numberUnderZero(NumberUnderZero<T> value),
    Result notANumber(NotANumber<T> value),
    Result wrongWeek(WrongWeek<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongWeek != null) {
      return wrongWeek(this);
    }
    return orElse();
  }
}

abstract class WrongWeek<T> implements ValueFailure<T> {
  const factory WrongWeek({@required dynamic failedValue}) = _$WrongWeek<T>;

  dynamic get failedValue;
  $WrongWeekCopyWith<T, WrongWeek<T>> get copyWith;
}
