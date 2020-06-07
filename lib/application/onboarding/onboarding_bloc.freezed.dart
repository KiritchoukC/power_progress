// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OnboardingEventTearOff {
  const _$OnboardingEventTearOff();

  MarkDone markDone() {
    return const MarkDone();
  }

  IsDone isDone() {
    return const IsDone();
  }
}

// ignore: unused_element
const $OnboardingEvent = _$OnboardingEventTearOff();

mixin _$OnboardingEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result markDone(),
    @required Result isDone(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result markDone(),
    Result isDone(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result markDone(MarkDone value),
    @required Result isDone(IsDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result markDone(MarkDone value),
    Result isDone(IsDone value),
    @required Result orElse(),
  });
}

abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res>;
}

class _$OnboardingEventCopyWithImpl<$Res>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  final OnboardingEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardingEvent) _then;
}

abstract class $MarkDoneCopyWith<$Res> {
  factory $MarkDoneCopyWith(MarkDone value, $Res Function(MarkDone) then) =
      _$MarkDoneCopyWithImpl<$Res>;
}

class _$MarkDoneCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements $MarkDoneCopyWith<$Res> {
  _$MarkDoneCopyWithImpl(MarkDone _value, $Res Function(MarkDone) _then)
      : super(_value, (v) => _then(v as MarkDone));

  @override
  MarkDone get _value => super._value as MarkDone;
}

class _$MarkDone with DiagnosticableTreeMixin implements MarkDone {
  const _$MarkDone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardingEvent.markDone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardingEvent.markDone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MarkDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result markDone(),
    @required Result isDone(),
  }) {
    assert(markDone != null);
    assert(isDone != null);
    return markDone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result markDone(),
    Result isDone(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markDone != null) {
      return markDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result markDone(MarkDone value),
    @required Result isDone(IsDone value),
  }) {
    assert(markDone != null);
    assert(isDone != null);
    return markDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result markDone(MarkDone value),
    Result isDone(IsDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markDone != null) {
      return markDone(this);
    }
    return orElse();
  }
}

abstract class MarkDone implements OnboardingEvent {
  const factory MarkDone() = _$MarkDone;
}

abstract class $IsDoneCopyWith<$Res> {
  factory $IsDoneCopyWith(IsDone value, $Res Function(IsDone) then) =
      _$IsDoneCopyWithImpl<$Res>;
}

class _$IsDoneCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements $IsDoneCopyWith<$Res> {
  _$IsDoneCopyWithImpl(IsDone _value, $Res Function(IsDone) _then)
      : super(_value, (v) => _then(v as IsDone));

  @override
  IsDone get _value => super._value as IsDone;
}

class _$IsDone with DiagnosticableTreeMixin implements IsDone {
  const _$IsDone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardingEvent.isDone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardingEvent.isDone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result markDone(),
    @required Result isDone(),
  }) {
    assert(markDone != null);
    assert(isDone != null);
    return isDone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result markDone(),
    Result isDone(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isDone != null) {
      return isDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result markDone(MarkDone value),
    @required Result isDone(IsDone value),
  }) {
    assert(markDone != null);
    assert(isDone != null);
    return isDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result markDone(MarkDone value),
    Result isDone(IsDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isDone != null) {
      return isDone(this);
    }
    return orElse();
  }
}

abstract class IsDone implements OnboardingEvent {
  const factory IsDone() = _$IsDone;
}

class _$OnboardingStateTearOff {
  const _$OnboardingStateTearOff();

  Initial initial() {
    return const Initial();
  }

  MarkDoneInProgress markDoneInProgress() {
    return const MarkDoneInProgress();
  }

  MarkedDone markedDone() {
    return const MarkedDone();
  }

  IsDoneInProgress isDoneInProgress() {
    return const IsDoneInProgress();
  }

  Done done() {
    return const Done();
  }

  NotDone notDone() {
    return const NotDone();
  }

  Error error({@required String message}) {
    return Error(
      message: message,
    );
  }
}

// ignore: unused_element
const $OnboardingState = _$OnboardingStateTearOff();

mixin _$OnboardingState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result isDoneInProgress(),
    @required Result done(),
    @required Result notDone(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result markDoneInProgress(),
    Result markedDone(),
    Result isDoneInProgress(),
    Result done(),
    Result notDone(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result isDoneInProgress(IsDoneInProgress value),
    @required Result done(Done value),
    @required Result notDone(NotDone value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result isDoneInProgress(IsDoneInProgress value),
    Result done(Done value),
    Result notDone(NotDone value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res>;
}

class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  final OnboardingState _value;
  // ignore: unused_field
  final $Res Function(OnboardingState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
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
    return 'OnboardingState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardingState.initial'));
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
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result isDoneInProgress(),
    @required Result done(),
    @required Result notDone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result markDoneInProgress(),
    Result markedDone(),
    Result isDoneInProgress(),
    Result done(),
    Result notDone(),
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
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result isDoneInProgress(IsDoneInProgress value),
    @required Result done(Done value),
    @required Result notDone(NotDone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result isDoneInProgress(IsDoneInProgress value),
    Result done(Done value),
    Result notDone(NotDone value),
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

abstract class Initial implements OnboardingState {
  const factory Initial() = _$Initial;
}

abstract class $MarkDoneInProgressCopyWith<$Res> {
  factory $MarkDoneInProgressCopyWith(
          MarkDoneInProgress value, $Res Function(MarkDoneInProgress) then) =
      _$MarkDoneInProgressCopyWithImpl<$Res>;
}

class _$MarkDoneInProgressCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
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
    return 'OnboardingState.markDoneInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnboardingState.markDoneInProgress'));
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
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result isDoneInProgress(),
    @required Result done(),
    @required Result notDone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return markDoneInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result markDoneInProgress(),
    Result markedDone(),
    Result isDoneInProgress(),
    Result done(),
    Result notDone(),
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
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result isDoneInProgress(IsDoneInProgress value),
    @required Result done(Done value),
    @required Result notDone(NotDone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return markDoneInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result isDoneInProgress(IsDoneInProgress value),
    Result done(Done value),
    Result notDone(NotDone value),
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

abstract class MarkDoneInProgress implements OnboardingState {
  const factory MarkDoneInProgress() = _$MarkDoneInProgress;
}

abstract class $MarkedDoneCopyWith<$Res> {
  factory $MarkedDoneCopyWith(
          MarkedDone value, $Res Function(MarkedDone) then) =
      _$MarkedDoneCopyWithImpl<$Res>;
}

class _$MarkedDoneCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
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
    return 'OnboardingState.markedDone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardingState.markedDone'));
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
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result isDoneInProgress(),
    @required Result done(),
    @required Result notDone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return markedDone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result markDoneInProgress(),
    Result markedDone(),
    Result isDoneInProgress(),
    Result done(),
    Result notDone(),
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
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result isDoneInProgress(IsDoneInProgress value),
    @required Result done(Done value),
    @required Result notDone(NotDone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return markedDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result isDoneInProgress(IsDoneInProgress value),
    Result done(Done value),
    Result notDone(NotDone value),
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

abstract class MarkedDone implements OnboardingState {
  const factory MarkedDone() = _$MarkedDone;
}

abstract class $IsDoneInProgressCopyWith<$Res> {
  factory $IsDoneInProgressCopyWith(
          IsDoneInProgress value, $Res Function(IsDoneInProgress) then) =
      _$IsDoneInProgressCopyWithImpl<$Res>;
}

class _$IsDoneInProgressCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements $IsDoneInProgressCopyWith<$Res> {
  _$IsDoneInProgressCopyWithImpl(
      IsDoneInProgress _value, $Res Function(IsDoneInProgress) _then)
      : super(_value, (v) => _then(v as IsDoneInProgress));

  @override
  IsDoneInProgress get _value => super._value as IsDoneInProgress;
}

class _$IsDoneInProgress
    with DiagnosticableTreeMixin
    implements IsDoneInProgress {
  const _$IsDoneInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardingState.isDoneInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnboardingState.isDoneInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsDoneInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result isDoneInProgress(),
    @required Result done(),
    @required Result notDone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return isDoneInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result markDoneInProgress(),
    Result markedDone(),
    Result isDoneInProgress(),
    Result done(),
    Result notDone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isDoneInProgress != null) {
      return isDoneInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result isDoneInProgress(IsDoneInProgress value),
    @required Result done(Done value),
    @required Result notDone(NotDone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return isDoneInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result isDoneInProgress(IsDoneInProgress value),
    Result done(Done value),
    Result notDone(NotDone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isDoneInProgress != null) {
      return isDoneInProgress(this);
    }
    return orElse();
  }
}

abstract class IsDoneInProgress implements OnboardingState {
  const factory IsDoneInProgress() = _$IsDoneInProgress;
}

abstract class $DoneCopyWith<$Res> {
  factory $DoneCopyWith(Done value, $Res Function(Done) then) =
      _$DoneCopyWithImpl<$Res>;
}

class _$DoneCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
    implements $DoneCopyWith<$Res> {
  _$DoneCopyWithImpl(Done _value, $Res Function(Done) _then)
      : super(_value, (v) => _then(v as Done));

  @override
  Done get _value => super._value as Done;
}

class _$Done with DiagnosticableTreeMixin implements Done {
  const _$Done();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardingState.done()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardingState.done'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Done);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result isDoneInProgress(),
    @required Result done(),
    @required Result notDone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result markDoneInProgress(),
    Result markedDone(),
    Result isDoneInProgress(),
    Result done(),
    Result notDone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result isDoneInProgress(IsDoneInProgress value),
    @required Result done(Done value),
    @required Result notDone(NotDone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result isDoneInProgress(IsDoneInProgress value),
    Result done(Done value),
    Result notDone(NotDone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class Done implements OnboardingState {
  const factory Done() = _$Done;
}

abstract class $NotDoneCopyWith<$Res> {
  factory $NotDoneCopyWith(NotDone value, $Res Function(NotDone) then) =
      _$NotDoneCopyWithImpl<$Res>;
}

class _$NotDoneCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
    implements $NotDoneCopyWith<$Res> {
  _$NotDoneCopyWithImpl(NotDone _value, $Res Function(NotDone) _then)
      : super(_value, (v) => _then(v as NotDone));

  @override
  NotDone get _value => super._value as NotDone;
}

class _$NotDone with DiagnosticableTreeMixin implements NotDone {
  const _$NotDone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardingState.notDone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardingState.notDone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result isDoneInProgress(),
    @required Result done(),
    @required Result notDone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return notDone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result markDoneInProgress(),
    Result markedDone(),
    Result isDoneInProgress(),
    Result done(),
    Result notDone(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notDone != null) {
      return notDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result isDoneInProgress(IsDoneInProgress value),
    @required Result done(Done value),
    @required Result notDone(NotDone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return notDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result isDoneInProgress(IsDoneInProgress value),
    Result done(Done value),
    Result notDone(NotDone value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notDone != null) {
      return notDone(this);
    }
    return orElse();
  }
}

abstract class NotDone implements OnboardingState {
  const factory NotDone() = _$NotDone;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
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
    return 'OnboardingState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnboardingState.error'))
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
    @required Result markDoneInProgress(),
    @required Result markedDone(),
    @required Result isDoneInProgress(),
    @required Result done(),
    @required Result notDone(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result markDoneInProgress(),
    Result markedDone(),
    Result isDoneInProgress(),
    Result done(),
    Result notDone(),
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
    @required Result markDoneInProgress(MarkDoneInProgress value),
    @required Result markedDone(MarkedDone value),
    @required Result isDoneInProgress(IsDoneInProgress value),
    @required Result done(Done value),
    @required Result notDone(NotDone value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(markDoneInProgress != null);
    assert(markedDone != null);
    assert(isDoneInProgress != null);
    assert(done != null);
    assert(notDone != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result markDoneInProgress(MarkDoneInProgress value),
    Result markedDone(MarkedDone value),
    Result isDoneInProgress(IsDoneInProgress value),
    Result done(Done value),
    Result notDone(NotDone value),
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

abstract class Error implements OnboardingState {
  const factory Error({@required String message}) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}