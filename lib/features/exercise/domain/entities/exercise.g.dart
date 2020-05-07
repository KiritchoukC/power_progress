// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

// ignore_for_file: argument_type_not_assignable, implicit_dynamic_type, always_specify_types

extension ExerciseCopyWithExtension on Exercise {
  Exercise copyWith({
    int id,
    double incrementation,
    String name,
    String note,
    double oneRm,
  }) {
    return Exercise(
      id: id ?? this.id,
      incrementation: incrementation ?? this.incrementation,
      name: name ?? this.name,
      note: note ?? this.note,
      oneRm: oneRm ?? this.oneRm,
    );
  }
}
