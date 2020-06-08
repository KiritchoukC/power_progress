// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutEventTearOff {
  const _$WorkoutEventTearOff();

  Generate generate(
      {@required int exerciseId,
      @required Month month,
      @required OneRm oneRm}) {
    return Generate(
      exerciseId: exerciseId,
      month: month,
      oneRm: oneRm,
    );
  }

  MarkDone markDone(
      {@required int exerciseId,
      @required Month month,
      @required WeekEnum week,
      int repsDone}) {
    return MarkDone(
      exerciseId: exerciseId,
      month: month,
      week: week,
      repsDone: repsDone,
    );
  }

  MarkUndone markUndone(
      {@required int id,
      @required int exerciseId,
      @required WeekEnum week,
      @required Month month}) {
    return MarkUndone(
      id: id,
      exerciseId: exerciseId,
      week: week,
      month: month,
    );
  }
}

// ignore: unused_element
const $WorkoutEvent = _$WorkoutEventTearOff();

mixin _$WorkoutEvent {
  int get exerciseId;
  Month get month;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result generate(int exerciseId, Month month, OneRm oneRm),
    @required
        Result markDone(
            int exerciseId, Month month, WeekEnum week, int repsDone),
    @required
        Result markUndone(int id, int exerciseId, WeekEnum week, Month month),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result generate(int exerciseId, Month month, OneRm oneRm),
    Result markDone(int exerciseId, Month month, WeekEnum week, int repsDone),
    Result markUndone(int id, int exerciseId, WeekEnum week, Month month),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    @required Result orElse(),
  });

  $WorkoutEventCopyWith<WorkoutEvent> get copyWith;
}

abstract class $WorkoutEventCopyWith<$Res> {
  factory $WorkoutEventCopyWith(
          WorkoutEvent value, $Res Function(WorkoutEvent) then) =
      _$WorkoutEventCopyWithImpl<$Res>;
  $Res call({int exerciseId, Month month});
}

class _$WorkoutEventCopyWithImpl<$Res> implements $WorkoutEventCopyWith<$Res> {
  _$WorkoutEventCopyWithImpl(this._value, this._then);

  final WorkoutEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutEvent) _then;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object month = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
    ));
  }
}

abstract class $GenerateCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $GenerateCopyWith(Generate value, $Res Function(Generate) then) =
      _$GenerateCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId, Month month, OneRm oneRm});
}

class _$GenerateCopyWithImpl<$Res> extends _$WorkoutEventCopyWithImpl<$Res>
    implements $GenerateCopyWith<$Res> {
  _$GenerateCopyWithImpl(Generate _value, $Res Function(Generate) _then)
      : super(_value, (v) => _then(v as Generate));

  @override
  Generate get _value => super._value as Generate;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object month = freezed,
    Object oneRm = freezed,
  }) {
    return _then(Generate(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
      oneRm: oneRm == freezed ? _value.oneRm : oneRm as OneRm,
    ));
  }
}

class _$Generate with DiagnosticableTreeMixin implements Generate {
  const _$Generate(
      {@required this.exerciseId, @required this.month, @required this.oneRm})
      : assert(exerciseId != null),
        assert(month != null),
        assert(oneRm != null);

  @override
  final int exerciseId;
  @override
  final Month month;
  @override
  final OneRm oneRm;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.generate(exerciseId: $exerciseId, month: $month, oneRm: $oneRm)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.generate'))
      ..add(DiagnosticsProperty('exerciseId', exerciseId))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('oneRm', oneRm));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Generate &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.oneRm, oneRm) ||
                const DeepCollectionEquality().equals(other.oneRm, oneRm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(oneRm);

  @override
  $GenerateCopyWith<Generate> get copyWith =>
      _$GenerateCopyWithImpl<Generate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result generate(int exerciseId, Month month, OneRm oneRm),
    @required
        Result markDone(
            int exerciseId, Month month, WeekEnum week, int repsDone),
    @required
        Result markUndone(int id, int exerciseId, WeekEnum week, Month month),
  }) {
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    return generate(exerciseId, month, oneRm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result generate(int exerciseId, Month month, OneRm oneRm),
    Result markDone(int exerciseId, Month month, WeekEnum week, int repsDone),
    Result markUndone(int id, int exerciseId, WeekEnum week, Month month),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generate != null) {
      return generate(exerciseId, month, oneRm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
  }) {
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    return generate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generate != null) {
      return generate(this);
    }
    return orElse();
  }
}

abstract class Generate implements WorkoutEvent {
  const factory Generate(
      {@required int exerciseId,
      @required Month month,
      @required OneRm oneRm}) = _$Generate;

  @override
  int get exerciseId;
  @override
  Month get month;
  OneRm get oneRm;
  @override
  $GenerateCopyWith<Generate> get copyWith;
}

abstract class $MarkDoneCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $MarkDoneCopyWith(MarkDone value, $Res Function(MarkDone) then) =
      _$MarkDoneCopyWithImpl<$Res>;
  @override
  $Res call({int exerciseId, Month month, WeekEnum week, int repsDone});
}

class _$MarkDoneCopyWithImpl<$Res> extends _$WorkoutEventCopyWithImpl<$Res>
    implements $MarkDoneCopyWith<$Res> {
  _$MarkDoneCopyWithImpl(MarkDone _value, $Res Function(MarkDone) _then)
      : super(_value, (v) => _then(v as MarkDone));

  @override
  MarkDone get _value => super._value as MarkDone;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object month = freezed,
    Object week = freezed,
    Object repsDone = freezed,
  }) {
    return _then(MarkDone(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
      week: week == freezed ? _value.week : week as WeekEnum,
      repsDone: repsDone == freezed ? _value.repsDone : repsDone as int,
    ));
  }
}

class _$MarkDone with DiagnosticableTreeMixin implements MarkDone {
  const _$MarkDone(
      {@required this.exerciseId,
      @required this.month,
      @required this.week,
      this.repsDone})
      : assert(exerciseId != null),
        assert(month != null),
        assert(week != null);

  @override
  final int exerciseId;
  @override
  final Month month;
  @override
  final WeekEnum week;
  @override
  final int repsDone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.markDone(exerciseId: $exerciseId, month: $month, week: $week, repsDone: $repsDone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.markDone'))
      ..add(DiagnosticsProperty('exerciseId', exerciseId))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('week', week))
      ..add(DiagnosticsProperty('repsDone', repsDone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkDone &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.week, week) ||
                const DeepCollectionEquality().equals(other.week, week)) &&
            (identical(other.repsDone, repsDone) ||
                const DeepCollectionEquality()
                    .equals(other.repsDone, repsDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(week) ^
      const DeepCollectionEquality().hash(repsDone);

  @override
  $MarkDoneCopyWith<MarkDone> get copyWith =>
      _$MarkDoneCopyWithImpl<MarkDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result generate(int exerciseId, Month month, OneRm oneRm),
    @required
        Result markDone(
            int exerciseId, Month month, WeekEnum week, int repsDone),
    @required
        Result markUndone(int id, int exerciseId, WeekEnum week, Month month),
  }) {
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    return markDone(exerciseId, month, week, repsDone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result generate(int exerciseId, Month month, OneRm oneRm),
    Result markDone(int exerciseId, Month month, WeekEnum week, int repsDone),
    Result markUndone(int id, int exerciseId, WeekEnum week, Month month),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markDone != null) {
      return markDone(exerciseId, month, week, repsDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
  }) {
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    return markDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markDone != null) {
      return markDone(this);
    }
    return orElse();
  }
}

abstract class MarkDone implements WorkoutEvent {
  const factory MarkDone(
      {@required int exerciseId,
      @required Month month,
      @required WeekEnum week,
      int repsDone}) = _$MarkDone;

  @override
  int get exerciseId;
  @override
  Month get month;
  WeekEnum get week;
  int get repsDone;
  @override
  $MarkDoneCopyWith<MarkDone> get copyWith;
}

abstract class $MarkUndoneCopyWith<$Res>
    implements $WorkoutEventCopyWith<$Res> {
  factory $MarkUndoneCopyWith(
          MarkUndone value, $Res Function(MarkUndone) then) =
      _$MarkUndoneCopyWithImpl<$Res>;
  @override
  $Res call({int id, int exerciseId, WeekEnum week, Month month});
}

class _$MarkUndoneCopyWithImpl<$Res> extends _$WorkoutEventCopyWithImpl<$Res>
    implements $MarkUndoneCopyWith<$Res> {
  _$MarkUndoneCopyWithImpl(MarkUndone _value, $Res Function(MarkUndone) _then)
      : super(_value, (v) => _then(v as MarkUndone));

  @override
  MarkUndone get _value => super._value as MarkUndone;

  @override
  $Res call({
    Object id = freezed,
    Object exerciseId = freezed,
    Object week = freezed,
    Object month = freezed,
  }) {
    return _then(MarkUndone(
      id: id == freezed ? _value.id : id as int,
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      week: week == freezed ? _value.week : week as WeekEnum,
      month: month == freezed ? _value.month : month as Month,
    ));
  }
}

class _$MarkUndone with DiagnosticableTreeMixin implements MarkUndone {
  const _$MarkUndone(
      {@required this.id,
      @required this.exerciseId,
      @required this.week,
      @required this.month})
      : assert(id != null),
        assert(exerciseId != null),
        assert(week != null),
        assert(month != null);

  @override
  final int id;
  @override
  final int exerciseId;
  @override
  final WeekEnum week;
  @override
  final Month month;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.markUndone(id: $id, exerciseId: $exerciseId, week: $week, month: $month)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.markUndone'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('exerciseId', exerciseId))
      ..add(DiagnosticsProperty('week', week))
      ..add(DiagnosticsProperty('month', month));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkUndone &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.week, week) ||
                const DeepCollectionEquality().equals(other.week, week)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(week) ^
      const DeepCollectionEquality().hash(month);

  @override
  $MarkUndoneCopyWith<MarkUndone> get copyWith =>
      _$MarkUndoneCopyWithImpl<MarkUndone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result generate(int exerciseId, Month month, OneRm oneRm),
    @required
        Result markDone(
            int exerciseId, Month month, WeekEnum week, int repsDone),
    @required
        Result markUndone(int id, int exerciseId, WeekEnum week, Month month),
  }) {
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    return markUndone(id, exerciseId, week, month);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result generate(int exerciseId, Month month, OneRm oneRm),
    Result markDone(int exerciseId, Month month, WeekEnum week, int repsDone),
    Result markUndone(int id, int exerciseId, WeekEnum week, Month month),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markUndone != null) {
      return markUndone(id, exerciseId, week, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
  }) {
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    return markUndone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markUndone != null) {
      return markUndone(this);
    }
    return orElse();
  }
}

abstract class MarkUndone implements WorkoutEvent {
  const factory MarkUndone(
      {@required int id,
      @required int exerciseId,
      @required WeekEnum week,
      @required Month month}) = _$MarkUndone;

  int get id;
  @override
  int get exerciseId;
  WeekEnum get week;
  @override
  Month get month;
  @override
  $MarkUndoneCopyWith<MarkUndone> get copyWith;
}

class _$WorkoutStateTearOff {
  const _$WorkoutStateTearOff();

  Initial initial() {
    return const Initial();
  }

  GenerateInProgress generateInProgress() {
    return const GenerateInProgress();
  }

  Generated generated({@required MonthWorkout workout, @required Month month}) {
    return Generated(
      workout: workout,
      month: month,
    );
  }

  MarkDoneInProgress markDoneInProgress() {
    return const MarkDoneInProgress();
  }

  MarkedDone markedDone() {
    return const MarkedDone();
  }

  MarkUndoneInProgress markUndoneInProgress() {
    return const MarkUndoneInProgress();
  }

  MarkedUndone markedUndone() {
    return const MarkedUndone();
  }

  Error error({@required String message}) {
    return Error(
      message: message,
    );
  }
}

// ignore: unused_element
const $WorkoutState = _$WorkoutStateTearOff();

mixin _$WorkoutState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(),
    Result markUndoneInProgress(),
    Result markedUndone(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result generateInProgress(GenerateInProgress value),
    @required Result generated(Generated value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result markUndoneInProgress(MarkUndoneInProgress value),
    @required Result markedUndone(MarkedUndone value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result generateInProgress(GenerateInProgress value),
    Result generated(Generated value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result markUndoneInProgress(MarkUndoneInProgress value),
    Result markedUndone(MarkedUndone value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
          WorkoutState value, $Res Function(WorkoutState) then) =
      _$WorkoutStateCopyWithImpl<$Res>;
}

class _$WorkoutStateCopyWithImpl<$Res> implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._value, this._then);

  final WorkoutState _value;
  // ignore: unused_field
  final $Res Function(WorkoutState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WorkoutState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(),
    Result markUndoneInProgress(),
    Result markedUndone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result generateInProgress(GenerateInProgress value),
    @required Result generated(Generated value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result markUndoneInProgress(MarkUndoneInProgress value),
    @required Result markedUndone(MarkedUndone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result generateInProgress(GenerateInProgress value),
    Result generated(Generated value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result markUndoneInProgress(MarkUndoneInProgress value),
    Result markedUndone(MarkedUndone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WorkoutState {
  const factory Initial() = _$Initial;
}

abstract class $GenerateInProgressCopyWith<$Res> {
  factory $GenerateInProgressCopyWith(
          GenerateInProgress value, $Res Function(GenerateInProgress) then) =
      _$GenerateInProgressCopyWithImpl<$Res>;
}

class _$GenerateInProgressCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res>
    implements $GenerateInProgressCopyWith<$Res> {
  _$GenerateInProgressCopyWithImpl(
      GenerateInProgress _value, $Res Function(GenerateInProgress) _then)
      : super(_value, (v) => _then(v as GenerateInProgress));

  @override
  GenerateInProgress get _value => super._value as GenerateInProgress;
}

class _$GenerateInProgress
    with DiagnosticableTreeMixin
    implements GenerateInProgress {
  const _$GenerateInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.generateInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState.generateInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GenerateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return generateInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(),
    Result markUndoneInProgress(),
    Result markedUndone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generateInProgress != null) {
      return generateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result generateInProgress(GenerateInProgress value),
    @required Result generated(Generated value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result markUndoneInProgress(MarkUndoneInProgress value),
    @required Result markedUndone(MarkedUndone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return generateInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result generateInProgress(GenerateInProgress value),
    Result generated(Generated value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result markUndoneInProgress(MarkUndoneInProgress value),
    Result markedUndone(MarkedUndone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generateInProgress != null) {
      return generateInProgress(this);
    }
    return orElse();
  }
}

abstract class GenerateInProgress implements WorkoutState {
  const factory GenerateInProgress() = _$GenerateInProgress;
}

abstract class $GeneratedCopyWith<$Res> {
  factory $GeneratedCopyWith(Generated value, $Res Function(Generated) then) =
      _$GeneratedCopyWithImpl<$Res>;
  $Res call({MonthWorkout workout, Month month});
}

class _$GeneratedCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements $GeneratedCopyWith<$Res> {
  _$GeneratedCopyWithImpl(Generated _value, $Res Function(Generated) _then)
      : super(_value, (v) => _then(v as Generated));

  @override
  Generated get _value => super._value as Generated;

  @override
  $Res call({
    Object workout = freezed,
    Object month = freezed,
  }) {
    return _then(Generated(
      workout: workout == freezed ? _value.workout : workout as MonthWorkout,
      month: month == freezed ? _value.month : month as Month,
    ));
  }
}

class _$Generated with DiagnosticableTreeMixin implements Generated {
  const _$Generated({@required this.workout, @required this.month})
      : assert(workout != null),
        assert(month != null);

  @override
  final MonthWorkout workout;
  @override
  final Month month;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.generated(workout: $workout, month: $month)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState.generated'))
      ..add(DiagnosticsProperty('workout', workout))
      ..add(DiagnosticsProperty('month', month));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Generated &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality()
                    .equals(other.workout, workout)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workout) ^
      const DeepCollectionEquality().hash(month);

  @override
  $GeneratedCopyWith<Generated> get copyWith =>
      _$GeneratedCopyWithImpl<Generated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return generated(workout, month);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(),
    Result markUndoneInProgress(),
    Result markedUndone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generated != null) {
      return generated(workout, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result generateInProgress(GenerateInProgress value),
    @required Result generated(Generated value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result markUndoneInProgress(MarkUndoneInProgress value),
    @required Result markedUndone(MarkedUndone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return generated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result generateInProgress(GenerateInProgress value),
    Result generated(Generated value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result markUndoneInProgress(MarkUndoneInProgress value),
    Result markedUndone(MarkedUndone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generated != null) {
      return generated(this);
    }
    return orElse();
  }
}

abstract class Generated implements WorkoutState {
  const factory Generated(
      {@required MonthWorkout workout, @required Month month}) = _$Generated;

  MonthWorkout get workout;
  Month get month;
  $GeneratedCopyWith<Generated> get copyWith;
}

abstract class $MarkDoneInProgressCopyWith<$Res> {
  factory $MarkDoneInProgressCopyWith(
          MarkDoneInProgress value, $Res Function(MarkDoneInProgress) then) =
      _$MarkDoneInProgressCopyWithImpl<$Res>;
}

class _$MarkDoneInProgressCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res>
    implements $MarkDoneInProgressCopyWith<$Res> {
  _$MarkDoneInProgressCopyWithImpl(
      MarkDoneInProgress _value, $Res Function(MarkDoneInProgress) _then)
      : super(_value, (v) => _then(v as MarkDoneInProgress));

  @override
  MarkDoneInProgress get _value => super._value as MarkDoneInProgress;
}

class _$MarkDoneInProgress
    with DiagnosticableTreeMixin
    implements MarkDoneInProgress {
  const _$MarkDoneInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.markDoneInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState.markDoneInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MarkDoneInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return markDoneInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(),
    Result markUndoneInProgress(),
    Result markedUndone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markDoneInProgress != null) {
      return markDoneInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result generateInProgress(GenerateInProgress value),
    @required Result generated(Generated value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result markUndoneInProgress(MarkUndoneInProgress value),
    @required Result markedUndone(MarkedUndone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return markDoneInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result generateInProgress(GenerateInProgress value),
    Result generated(Generated value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result markUndoneInProgress(MarkUndoneInProgress value),
    Result markedUndone(MarkedUndone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markDoneInProgress != null) {
      return markDoneInProgress(this);
    }
    return orElse();
  }
}

abstract class MarkDoneInProgress implements WorkoutState {
  const factory MarkDoneInProgress() = _$MarkDoneInProgress;
}

abstract class $MarkedDoneCopyWith<$Res> {
  factory $MarkedDoneCopyWith(
          MarkedDone value, $Res Function(MarkedDone) then) =
      _$MarkedDoneCopyWithImpl<$Res>;
}

class _$MarkedDoneCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements $MarkedDoneCopyWith<$Res> {
  _$MarkedDoneCopyWithImpl(MarkedDone _value, $Res Function(MarkedDone) _then)
      : super(_value, (v) => _then(v as MarkedDone));

  @override
  MarkedDone get _value => super._value as MarkedDone;
}

class _$MarkedDone with DiagnosticableTreeMixin implements MarkedDone {
  const _$MarkedDone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.markedDone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WorkoutState.markedDone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MarkedDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return markedDone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(),
    Result markUndoneInProgress(),
    Result markedUndone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markedDone != null) {
      return markedDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result generateInProgress(GenerateInProgress value),
    @required Result generated(Generated value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result markUndoneInProgress(MarkUndoneInProgress value),
    @required Result markedUndone(MarkedUndone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return markedDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result generateInProgress(GenerateInProgress value),
    Result generated(Generated value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result markUndoneInProgress(MarkUndoneInProgress value),
    Result markedUndone(MarkedUndone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markedDone != null) {
      return markedDone(this);
    }
    return orElse();
  }
}

abstract class MarkedDone implements WorkoutState {
  const factory MarkedDone() = _$MarkedDone;
}

abstract class $MarkUndoneInProgressCopyWith<$Res> {
  factory $MarkUndoneInProgressCopyWith(MarkUndoneInProgress value,
          $Res Function(MarkUndoneInProgress) then) =
      _$MarkUndoneInProgressCopyWithImpl<$Res>;
}

class _$MarkUndoneInProgressCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res>
    implements $MarkUndoneInProgressCopyWith<$Res> {
  _$MarkUndoneInProgressCopyWithImpl(
      MarkUndoneInProgress _value, $Res Function(MarkUndoneInProgress) _then)
      : super(_value, (v) => _then(v as MarkUndoneInProgress));

  @override
  MarkUndoneInProgress get _value => super._value as MarkUndoneInProgress;
}

class _$MarkUndoneInProgress
    with DiagnosticableTreeMixin
    implements MarkUndoneInProgress {
  const _$MarkUndoneInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.markUndoneInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState.markUndoneInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MarkUndoneInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return markUndoneInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(),
    Result markUndoneInProgress(),
    Result markedUndone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markUndoneInProgress != null) {
      return markUndoneInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result generateInProgress(GenerateInProgress value),
    @required Result generated(Generated value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result markUndoneInProgress(MarkUndoneInProgress value),
    @required Result markedUndone(MarkedUndone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return markUndoneInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result generateInProgress(GenerateInProgress value),
    Result generated(Generated value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result markUndoneInProgress(MarkUndoneInProgress value),
    Result markedUndone(MarkedUndone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markUndoneInProgress != null) {
      return markUndoneInProgress(this);
    }
    return orElse();
  }
}

abstract class MarkUndoneInProgress implements WorkoutState {
  const factory MarkUndoneInProgress() = _$MarkUndoneInProgress;
}

abstract class $MarkedUndoneCopyWith<$Res> {
  factory $MarkedUndoneCopyWith(
          MarkedUndone value, $Res Function(MarkedUndone) then) =
      _$MarkedUndoneCopyWithImpl<$Res>;
}

class _$MarkedUndoneCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements $MarkedUndoneCopyWith<$Res> {
  _$MarkedUndoneCopyWithImpl(
      MarkedUndone _value, $Res Function(MarkedUndone) _then)
      : super(_value, (v) => _then(v as MarkedUndone));

  @override
  MarkedUndone get _value => super._value as MarkedUndone;
}

class _$MarkedUndone with DiagnosticableTreeMixin implements MarkedUndone {
  const _$MarkedUndone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.markedUndone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WorkoutState.markedUndone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MarkedUndone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return markedUndone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(),
    Result markUndoneInProgress(),
    Result markedUndone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markedUndone != null) {
      return markedUndone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result generateInProgress(GenerateInProgress value),
    @required Result generated(Generated value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result markUndoneInProgress(MarkUndoneInProgress value),
    @required Result markedUndone(MarkedUndone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return markedUndone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result generateInProgress(GenerateInProgress value),
    Result generated(Generated value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result markUndoneInProgress(MarkUndoneInProgress value),
    Result markedUndone(MarkedUndone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markedUndone != null) {
      return markedUndone(this);
    }
    return orElse();
  }
}

abstract class MarkedUndone implements WorkoutState {
  const factory MarkedUndone() = _$MarkedUndone;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(),
    Result markUndoneInProgress(),
    Result markedUndone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result generateInProgress(GenerateInProgress value),
    @required Result generated(Generated value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result markUndoneInProgress(MarkUndoneInProgress value),
    @required Result markedUndone(MarkedUndone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result generateInProgress(GenerateInProgress value),
    Result generated(Generated value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result markUndoneInProgress(MarkUndoneInProgress value),
    Result markedUndone(MarkedUndone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements WorkoutState {
  const factory Error({@required String message}) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}
