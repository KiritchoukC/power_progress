// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutEventTearOff {
  const _$WorkoutEventTearOff();

  ResetState resetState() {
    return const ResetState();
  }

  Generate generate({@required int exerciseId, @required Month month}) {
    return Generate(
      exerciseId: exerciseId,
      month: month,
    );
  }

  MarkDone markDone(
      {@required int exerciseId,
      @required Incrementation incrementation,
      @required Month month,
      @required WeekEnum week,
      @required OneRm oneRm,
      @required Option<int> repsDone}) {
    return MarkDone(
      exerciseId: exerciseId,
      incrementation: incrementation,
      month: month,
      week: week,
      oneRm: oneRm,
      repsDone: repsDone,
    );
  }

  MarkUndone markUndone(
      {@required Option<int> id,
      @required int exerciseId,
      @required Incrementation incrementation,
      @required WeekEnum week,
      @required Month month,
      @required OneRm oneRm}) {
    return MarkUndone(
      id: id,
      exerciseId: exerciseId,
      incrementation: incrementation,
      week: week,
      month: month,
      oneRm: oneRm,
    );
  }

  Remove remove({@required int exerciseId}) {
    return Remove(
      exerciseId: exerciseId,
    );
  }
}

// ignore: unused_element
const $WorkoutEvent = _$WorkoutEventTearOff();

mixin _$WorkoutEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result resetState(),
    @required Result generate(int exerciseId, Month month),
    @required
        Result markDone(int exerciseId, Incrementation incrementation,
            Month month, WeekEnum week, OneRm oneRm, Option<int> repsDone),
    @required
        Result markUndone(
            Option<int> id,
            int exerciseId,
            Incrementation incrementation,
            WeekEnum week,
            Month month,
            OneRm oneRm),
    @required Result remove(int exerciseId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result generate(int exerciseId, Month month),
    Result markDone(int exerciseId, Incrementation incrementation, Month month,
        WeekEnum week, OneRm oneRm, Option<int> repsDone),
    Result markUndone(Option<int> id, int exerciseId,
        Incrementation incrementation, WeekEnum week, Month month, OneRm oneRm),
    Result remove(int exerciseId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resetState(ResetState value),
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
    @required Result remove(Remove value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(ResetState value),
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    Result remove(Remove value),
    @required Result orElse(),
  });
}

abstract class $WorkoutEventCopyWith<$Res> {
  factory $WorkoutEventCopyWith(
          WorkoutEvent value, $Res Function(WorkoutEvent) then) =
      _$WorkoutEventCopyWithImpl<$Res>;
}

class _$WorkoutEventCopyWithImpl<$Res> implements $WorkoutEventCopyWith<$Res> {
  _$WorkoutEventCopyWithImpl(this._value, this._then);

  final WorkoutEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutEvent) _then;
}

abstract class $ResetStateCopyWith<$Res> {
  factory $ResetStateCopyWith(
          ResetState value, $Res Function(ResetState) then) =
      _$ResetStateCopyWithImpl<$Res>;
}

class _$ResetStateCopyWithImpl<$Res> extends _$WorkoutEventCopyWithImpl<$Res>
    implements $ResetStateCopyWith<$Res> {
  _$ResetStateCopyWithImpl(ResetState _value, $Res Function(ResetState) _then)
      : super(_value, (v) => _then(v as ResetState));

  @override
  ResetState get _value => super._value as ResetState;
}

class _$ResetState with DiagnosticableTreeMixin implements ResetState {
  const _$ResetState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.resetState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WorkoutEvent.resetState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result resetState(),
    @required Result generate(int exerciseId, Month month),
    @required
        Result markDone(int exerciseId, Incrementation incrementation,
            Month month, WeekEnum week, OneRm oneRm, Option<int> repsDone),
    @required
        Result markUndone(
            Option<int> id,
            int exerciseId,
            Incrementation incrementation,
            WeekEnum week,
            Month month,
            OneRm oneRm),
    @required Result remove(int exerciseId),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return resetState();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result generate(int exerciseId, Month month),
    Result markDone(int exerciseId, Incrementation incrementation, Month month,
        WeekEnum week, OneRm oneRm, Option<int> repsDone),
    Result markUndone(Option<int> id, int exerciseId,
        Incrementation incrementation, WeekEnum week, Month month, OneRm oneRm),
    Result remove(int exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resetState(ResetState value),
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
    @required Result remove(Remove value),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(ResetState value),
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    Result remove(Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class ResetState implements WorkoutEvent {
  const factory ResetState() = _$ResetState;
}

abstract class $GenerateCopyWith<$Res> {
  factory $GenerateCopyWith(Generate value, $Res Function(Generate) then) =
      _$GenerateCopyWithImpl<$Res>;
  $Res call({int exerciseId, Month month});
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
  }) {
    return _then(Generate(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
    ));
  }
}

class _$Generate with DiagnosticableTreeMixin implements Generate {
  const _$Generate({@required this.exerciseId, @required this.month})
      : assert(exerciseId != null),
        assert(month != null);

  @override
  final int exerciseId;
  @override
  final Month month;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.generate(exerciseId: $exerciseId, month: $month)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.generate'))
      ..add(DiagnosticsProperty('exerciseId', exerciseId))
      ..add(DiagnosticsProperty('month', month));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Generate &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(month);

  @override
  $GenerateCopyWith<Generate> get copyWith =>
      _$GenerateCopyWithImpl<Generate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result resetState(),
    @required Result generate(int exerciseId, Month month),
    @required
        Result markDone(int exerciseId, Incrementation incrementation,
            Month month, WeekEnum week, OneRm oneRm, Option<int> repsDone),
    @required
        Result markUndone(
            Option<int> id,
            int exerciseId,
            Incrementation incrementation,
            WeekEnum week,
            Month month,
            OneRm oneRm),
    @required Result remove(int exerciseId),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return generate(exerciseId, month);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result generate(int exerciseId, Month month),
    Result markDone(int exerciseId, Incrementation incrementation, Month month,
        WeekEnum week, OneRm oneRm, Option<int> repsDone),
    Result markUndone(Option<int> id, int exerciseId,
        Incrementation incrementation, WeekEnum week, Month month, OneRm oneRm),
    Result remove(int exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generate != null) {
      return generate(exerciseId, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resetState(ResetState value),
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
    @required Result remove(Remove value),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return generate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(ResetState value),
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    Result remove(Remove value),
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
  const factory Generate({@required int exerciseId, @required Month month}) =
      _$Generate;

  int get exerciseId;
  Month get month;
  $GenerateCopyWith<Generate> get copyWith;
}

abstract class $MarkDoneCopyWith<$Res> {
  factory $MarkDoneCopyWith(MarkDone value, $Res Function(MarkDone) then) =
      _$MarkDoneCopyWithImpl<$Res>;
  $Res call(
      {int exerciseId,
      Incrementation incrementation,
      Month month,
      WeekEnum week,
      OneRm oneRm,
      Option<int> repsDone});

  $WeekEnumCopyWith<$Res> get week;
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
    Object incrementation = freezed,
    Object month = freezed,
    Object week = freezed,
    Object oneRm = freezed,
    Object repsDone = freezed,
  }) {
    return _then(MarkDone(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      incrementation: incrementation == freezed
          ? _value.incrementation
          : incrementation as Incrementation,
      month: month == freezed ? _value.month : month as Month,
      week: week == freezed ? _value.week : week as WeekEnum,
      oneRm: oneRm == freezed ? _value.oneRm : oneRm as OneRm,
      repsDone: repsDone == freezed ? _value.repsDone : repsDone as Option<int>,
    ));
  }

  @override
  $WeekEnumCopyWith<$Res> get week {
    if (_value.week == null) {
      return null;
    }
    return $WeekEnumCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value));
    });
  }
}

class _$MarkDone with DiagnosticableTreeMixin implements MarkDone {
  const _$MarkDone(
      {@required this.exerciseId,
      @required this.incrementation,
      @required this.month,
      @required this.week,
      @required this.oneRm,
      @required this.repsDone})
      : assert(exerciseId != null),
        assert(incrementation != null),
        assert(month != null),
        assert(week != null),
        assert(oneRm != null),
        assert(repsDone != null);

  @override
  final int exerciseId;
  @override
  final Incrementation incrementation;
  @override
  final Month month;
  @override
  final WeekEnum week;
  @override
  final OneRm oneRm;
  @override
  final Option<int> repsDone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.markDone(exerciseId: $exerciseId, incrementation: $incrementation, month: $month, week: $week, oneRm: $oneRm, repsDone: $repsDone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.markDone'))
      ..add(DiagnosticsProperty('exerciseId', exerciseId))
      ..add(DiagnosticsProperty('incrementation', incrementation))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('week', week))
      ..add(DiagnosticsProperty('oneRm', oneRm))
      ..add(DiagnosticsProperty('repsDone', repsDone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkDone &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.incrementation, incrementation) ||
                const DeepCollectionEquality()
                    .equals(other.incrementation, incrementation)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.week, week) ||
                const DeepCollectionEquality().equals(other.week, week)) &&
            (identical(other.oneRm, oneRm) ||
                const DeepCollectionEquality().equals(other.oneRm, oneRm)) &&
            (identical(other.repsDone, repsDone) ||
                const DeepCollectionEquality()
                    .equals(other.repsDone, repsDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(incrementation) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(week) ^
      const DeepCollectionEquality().hash(oneRm) ^
      const DeepCollectionEquality().hash(repsDone);

  @override
  $MarkDoneCopyWith<MarkDone> get copyWith =>
      _$MarkDoneCopyWithImpl<MarkDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result resetState(),
    @required Result generate(int exerciseId, Month month),
    @required
        Result markDone(int exerciseId, Incrementation incrementation,
            Month month, WeekEnum week, OneRm oneRm, Option<int> repsDone),
    @required
        Result markUndone(
            Option<int> id,
            int exerciseId,
            Incrementation incrementation,
            WeekEnum week,
            Month month,
            OneRm oneRm),
    @required Result remove(int exerciseId),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return markDone(exerciseId, incrementation, month, week, oneRm, repsDone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result generate(int exerciseId, Month month),
    Result markDone(int exerciseId, Incrementation incrementation, Month month,
        WeekEnum week, OneRm oneRm, Option<int> repsDone),
    Result markUndone(Option<int> id, int exerciseId,
        Incrementation incrementation, WeekEnum week, Month month, OneRm oneRm),
    Result remove(int exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markDone != null) {
      return markDone(exerciseId, incrementation, month, week, oneRm, repsDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resetState(ResetState value),
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
    @required Result remove(Remove value),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return markDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(ResetState value),
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    Result remove(Remove value),
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
      @required Incrementation incrementation,
      @required Month month,
      @required WeekEnum week,
      @required OneRm oneRm,
      @required Option<int> repsDone}) = _$MarkDone;

  int get exerciseId;
  Incrementation get incrementation;
  Month get month;
  WeekEnum get week;
  OneRm get oneRm;
  Option<int> get repsDone;
  $MarkDoneCopyWith<MarkDone> get copyWith;
}

abstract class $MarkUndoneCopyWith<$Res> {
  factory $MarkUndoneCopyWith(
          MarkUndone value, $Res Function(MarkUndone) then) =
      _$MarkUndoneCopyWithImpl<$Res>;
  $Res call(
      {Option<int> id,
      int exerciseId,
      Incrementation incrementation,
      WeekEnum week,
      Month month,
      OneRm oneRm});

  $WeekEnumCopyWith<$Res> get week;
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
    Object incrementation = freezed,
    Object week = freezed,
    Object month = freezed,
    Object oneRm = freezed,
  }) {
    return _then(MarkUndone(
      id: id == freezed ? _value.id : id as Option<int>,
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      incrementation: incrementation == freezed
          ? _value.incrementation
          : incrementation as Incrementation,
      week: week == freezed ? _value.week : week as WeekEnum,
      month: month == freezed ? _value.month : month as Month,
      oneRm: oneRm == freezed ? _value.oneRm : oneRm as OneRm,
    ));
  }

  @override
  $WeekEnumCopyWith<$Res> get week {
    if (_value.week == null) {
      return null;
    }
    return $WeekEnumCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value));
    });
  }
}

class _$MarkUndone with DiagnosticableTreeMixin implements MarkUndone {
  const _$MarkUndone(
      {@required this.id,
      @required this.exerciseId,
      @required this.incrementation,
      @required this.week,
      @required this.month,
      @required this.oneRm})
      : assert(id != null),
        assert(exerciseId != null),
        assert(incrementation != null),
        assert(week != null),
        assert(month != null),
        assert(oneRm != null);

  @override
  final Option<int> id;
  @override
  final int exerciseId;
  @override
  final Incrementation incrementation;
  @override
  final WeekEnum week;
  @override
  final Month month;
  @override
  final OneRm oneRm;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.markUndone(id: $id, exerciseId: $exerciseId, incrementation: $incrementation, week: $week, month: $month, oneRm: $oneRm)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.markUndone'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('exerciseId', exerciseId))
      ..add(DiagnosticsProperty('incrementation', incrementation))
      ..add(DiagnosticsProperty('week', week))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('oneRm', oneRm));
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
            (identical(other.incrementation, incrementation) ||
                const DeepCollectionEquality()
                    .equals(other.incrementation, incrementation)) &&
            (identical(other.week, week) ||
                const DeepCollectionEquality().equals(other.week, week)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.oneRm, oneRm) ||
                const DeepCollectionEquality().equals(other.oneRm, oneRm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(incrementation) ^
      const DeepCollectionEquality().hash(week) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(oneRm);

  @override
  $MarkUndoneCopyWith<MarkUndone> get copyWith =>
      _$MarkUndoneCopyWithImpl<MarkUndone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result resetState(),
    @required Result generate(int exerciseId, Month month),
    @required
        Result markDone(int exerciseId, Incrementation incrementation,
            Month month, WeekEnum week, OneRm oneRm, Option<int> repsDone),
    @required
        Result markUndone(
            Option<int> id,
            int exerciseId,
            Incrementation incrementation,
            WeekEnum week,
            Month month,
            OneRm oneRm),
    @required Result remove(int exerciseId),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return markUndone(id, exerciseId, incrementation, week, month, oneRm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result generate(int exerciseId, Month month),
    Result markDone(int exerciseId, Incrementation incrementation, Month month,
        WeekEnum week, OneRm oneRm, Option<int> repsDone),
    Result markUndone(Option<int> id, int exerciseId,
        Incrementation incrementation, WeekEnum week, Month month, OneRm oneRm),
    Result remove(int exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markUndone != null) {
      return markUndone(id, exerciseId, incrementation, week, month, oneRm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resetState(ResetState value),
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
    @required Result remove(Remove value),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return markUndone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(ResetState value),
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    Result remove(Remove value),
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
      {@required Option<int> id,
      @required int exerciseId,
      @required Incrementation incrementation,
      @required WeekEnum week,
      @required Month month,
      @required OneRm oneRm}) = _$MarkUndone;

  Option<int> get id;
  int get exerciseId;
  Incrementation get incrementation;
  WeekEnum get week;
  Month get month;
  OneRm get oneRm;
  $MarkUndoneCopyWith<MarkUndone> get copyWith;
}

abstract class $RemoveCopyWith<$Res> {
  factory $RemoveCopyWith(Remove value, $Res Function(Remove) then) =
      _$RemoveCopyWithImpl<$Res>;
  $Res call({int exerciseId});
}

class _$RemoveCopyWithImpl<$Res> extends _$WorkoutEventCopyWithImpl<$Res>
    implements $RemoveCopyWith<$Res> {
  _$RemoveCopyWithImpl(Remove _value, $Res Function(Remove) _then)
      : super(_value, (v) => _then(v as Remove));

  @override
  Remove get _value => super._value as Remove;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(Remove(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
    ));
  }
}

class _$Remove with DiagnosticableTreeMixin implements Remove {
  const _$Remove({@required this.exerciseId}) : assert(exerciseId != null);

  @override
  final int exerciseId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.remove(exerciseId: $exerciseId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.remove'))
      ..add(DiagnosticsProperty('exerciseId', exerciseId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Remove &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  $RemoveCopyWith<Remove> get copyWith =>
      _$RemoveCopyWithImpl<Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result resetState(),
    @required Result generate(int exerciseId, Month month),
    @required
        Result markDone(int exerciseId, Incrementation incrementation,
            Month month, WeekEnum week, OneRm oneRm, Option<int> repsDone),
    @required
        Result markUndone(
            Option<int> id,
            int exerciseId,
            Incrementation incrementation,
            WeekEnum week,
            Month month,
            OneRm oneRm),
    @required Result remove(int exerciseId),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return remove(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result resetState(),
    Result generate(int exerciseId, Month month),
    Result markDone(int exerciseId, Incrementation incrementation, Month month,
        WeekEnum week, OneRm oneRm, Option<int> repsDone),
    Result markUndone(Option<int> id, int exerciseId,
        Incrementation incrementation, WeekEnum week, Month month, OneRm oneRm),
    Result remove(int exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result resetState(ResetState value),
    @required Result generate(Generate value),
    @required Result markDone(MarkDone value),
    @required Result markUndone(MarkUndone value),
    @required Result remove(Remove value),
  }) {
    assert(resetState != null);
    assert(generate != null);
    assert(markDone != null);
    assert(markUndone != null);
    assert(remove != null);
    return remove(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result resetState(ResetState value),
    Result generate(Generate value),
    Result markDone(MarkDone value),
    Result markUndone(MarkUndone value),
    Result remove(Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class Remove implements WorkoutEvent {
  const factory Remove({@required int exerciseId}) = _$Remove;

  int get exerciseId;
  $RemoveCopyWith<Remove> get copyWith;
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

  MarkedDone markedDone(
      {@required int exerciseId,
      @required Month month,
      @required OneRm oneRm}) {
    return MarkedDone(
      exerciseId: exerciseId,
      month: month,
      oneRm: oneRm,
    );
  }

  MarkUndoneInProgress markUndoneInProgress() {
    return const MarkUndoneInProgress();
  }

  MarkedUndone markedUndone(
      {@required int exerciseId,
      @required Month month,
      @required OneRm oneRm}) {
    return MarkedUndone(
      exerciseId: exerciseId,
      month: month,
      oneRm: oneRm,
    );
  }

  RemoveInProgress removeInProgress() {
    return const RemoveInProgress();
  }

  Removed removed() {
    return const Removed();
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
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
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
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
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
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
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
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
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
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
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
  $Res call({int exerciseId, Month month, OneRm oneRm});
}

class _$MarkedDoneCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements $MarkedDoneCopyWith<$Res> {
  _$MarkedDoneCopyWithImpl(MarkedDone _value, $Res Function(MarkedDone) _then)
      : super(_value, (v) => _then(v as MarkedDone));

  @override
  MarkedDone get _value => super._value as MarkedDone;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object month = freezed,
    Object oneRm = freezed,
  }) {
    return _then(MarkedDone(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
      oneRm: oneRm == freezed ? _value.oneRm : oneRm as OneRm,
    ));
  }
}

class _$MarkedDone with DiagnosticableTreeMixin implements MarkedDone {
  const _$MarkedDone(
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
    return 'WorkoutState.markedDone(exerciseId: $exerciseId, month: $month, oneRm: $oneRm)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState.markedDone'))
      ..add(DiagnosticsProperty('exerciseId', exerciseId))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('oneRm', oneRm));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkedDone &&
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
  $MarkedDoneCopyWith<MarkedDone> get copyWith =>
      _$MarkedDoneCopyWithImpl<MarkedDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(error != null);
    return markedDone(exerciseId, month, oneRm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markedDone != null) {
      return markedDone(exerciseId, month, oneRm);
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
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
  const factory MarkedDone(
      {@required int exerciseId,
      @required Month month,
      @required OneRm oneRm}) = _$MarkedDone;

  int get exerciseId;
  Month get month;
  OneRm get oneRm;
  $MarkedDoneCopyWith<MarkedDone> get copyWith;
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
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
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
  $Res call({int exerciseId, Month month, OneRm oneRm});
}

class _$MarkedUndoneCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements $MarkedUndoneCopyWith<$Res> {
  _$MarkedUndoneCopyWithImpl(
      MarkedUndone _value, $Res Function(MarkedUndone) _then)
      : super(_value, (v) => _then(v as MarkedUndone));

  @override
  MarkedUndone get _value => super._value as MarkedUndone;

  @override
  $Res call({
    Object exerciseId = freezed,
    Object month = freezed,
    Object oneRm = freezed,
  }) {
    return _then(MarkedUndone(
      exerciseId: exerciseId == freezed ? _value.exerciseId : exerciseId as int,
      month: month == freezed ? _value.month : month as Month,
      oneRm: oneRm == freezed ? _value.oneRm : oneRm as OneRm,
    ));
  }
}

class _$MarkedUndone with DiagnosticableTreeMixin implements MarkedUndone {
  const _$MarkedUndone(
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
    return 'WorkoutState.markedUndone(exerciseId: $exerciseId, month: $month, oneRm: $oneRm)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState.markedUndone'))
      ..add(DiagnosticsProperty('exerciseId', exerciseId))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('oneRm', oneRm));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkedUndone &&
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
  $MarkedUndoneCopyWith<MarkedUndone> get copyWith =>
      _$MarkedUndoneCopyWithImpl<MarkedUndone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result generateInProgress(),
    @required Result generated(MonthWorkout workout, Month month),
    @required Result markDoneInProgress(),
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(error != null);
    return markedUndone(exerciseId, month, oneRm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markedUndone != null) {
      return markedUndone(exerciseId, month, oneRm);
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
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
  const factory MarkedUndone(
      {@required int exerciseId,
      @required Month month,
      @required OneRm oneRm}) = _$MarkedUndone;

  int get exerciseId;
  Month get month;
  OneRm get oneRm;
  $MarkedUndoneCopyWith<MarkedUndone> get copyWith;
}

abstract class $RemoveInProgressCopyWith<$Res> {
  factory $RemoveInProgressCopyWith(
          RemoveInProgress value, $Res Function(RemoveInProgress) then) =
      _$RemoveInProgressCopyWithImpl<$Res>;
}

class _$RemoveInProgressCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res>
    implements $RemoveInProgressCopyWith<$Res> {
  _$RemoveInProgressCopyWithImpl(
      RemoveInProgress _value, $Res Function(RemoveInProgress) _then)
      : super(_value, (v) => _then(v as RemoveInProgress));

  @override
  RemoveInProgress get _value => super._value as RemoveInProgress;
}

class _$RemoveInProgress
    with DiagnosticableTreeMixin
    implements RemoveInProgress {
  const _$RemoveInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.removeInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState.removeInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RemoveInProgress);
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
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(error != null);
    return removeInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeInProgress != null) {
      return removeInProgress();
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(error != null);
    return removeInProgress(this);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeInProgress != null) {
      return removeInProgress(this);
    }
    return orElse();
  }
}

abstract class RemoveInProgress implements WorkoutState {
  const factory RemoveInProgress() = _$RemoveInProgress;
}

abstract class $RemovedCopyWith<$Res> {
  factory $RemovedCopyWith(Removed value, $Res Function(Removed) then) =
      _$RemovedCopyWithImpl<$Res>;
}

class _$RemovedCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements $RemovedCopyWith<$Res> {
  _$RemovedCopyWithImpl(Removed _value, $Res Function(Removed) _then)
      : super(_value, (v) => _then(v as Removed));

  @override
  Removed get _value => super._value as Removed;
}

class _$Removed with DiagnosticableTreeMixin implements Removed {
  const _$Removed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState.removed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WorkoutState.removed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Removed);
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
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(error != null);
    return removed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generateInProgress(),
    Result generated(MonthWorkout workout, Month month),
    Result markDoneInProgress(),
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed();
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
    assert(error != null);
    return removed(this);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class Removed implements WorkoutState {
  const factory Removed() = _$Removed;
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
    @required Result markedDone(int exerciseId, Month month, OneRm oneRm),
    @required Result markUndoneInProgress(),
    @required Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    @required Result removeInProgress(),
    @required Result removed(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result markedDone(int exerciseId, Month month, OneRm oneRm),
    Result markUndoneInProgress(),
    Result markedUndone(int exerciseId, Month month, OneRm oneRm),
    Result removeInProgress(),
    Result removed(),
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
    @required Result removeInProgress(RemoveInProgress value),
    @required Result removed(Removed value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(generateInProgress != null);
    assert(generated != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(markUndoneInProgress != null);
    assert(markedUndone != null);
    assert(removeInProgress != null);
    assert(removed != null);
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
    Result removeInProgress(RemoveInProgress value),
    Result removed(Removed value),
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
