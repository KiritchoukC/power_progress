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
