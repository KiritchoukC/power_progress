// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_done_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutDoneModelAdapter extends TypeAdapter<WorkoutDoneModel> {
  @override
  final typeId = 1;

  @override
  WorkoutDoneModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkoutDoneModel(
      exerciseId: fields[1] as int,
      month: fields[2] as int,
      weekIndex: fields[3] as int,
      repsDone: fields[4] as int,
    )..id = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, WorkoutDoneModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.exerciseId)
      ..writeByte(2)
      ..write(obj.month)
      ..writeByte(3)
      ..write(obj.weekIndex)
      ..writeByte(4)
      ..write(obj.repsDone);
  }
}
