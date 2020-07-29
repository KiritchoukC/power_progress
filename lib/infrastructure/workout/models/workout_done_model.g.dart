// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_done_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutDoneModelAdapter extends TypeAdapter<WorkoutDoneModel> {
  @override
  final int typeId = 1;

  @override
  WorkoutDoneModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
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

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutDoneModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
