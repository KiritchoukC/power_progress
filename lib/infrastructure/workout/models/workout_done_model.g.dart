// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_done_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutDoneModelAdapter extends TypeAdapter<WorkoutDoneModel> {
  @override
  final typeId = 0;

  @override
  WorkoutDoneModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkoutDoneModel(
      exerciseId: fields[0] as int,
      month: fields[1] as int,
    )..weekIndex = fields[2] as int;
  }

  @override
  void write(BinaryWriter writer, WorkoutDoneModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.exerciseId)
      ..writeByte(1)
      ..write(obj.month)
      ..writeByte(2)
      ..write(obj.weekIndex);
  }
}
