// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExerciseModelAdapter extends TypeAdapter<ExerciseModel> {
  @override
  final typeId = 0;

  @override
  ExerciseModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExerciseModel(
      id: fields[0] as int,
      oneRm: fields[1] as double,
      name: fields[2] as String,
      incrementation: fields[3] as double,
      month: fields[5] as int,
      weekIndex: fields[6] as int,
      note: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ExerciseModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.oneRm)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.incrementation)
      ..writeByte(4)
      ..write(obj.note)
      ..writeByte(5)
      ..write(obj.month)
      ..writeByte(6)
      ..write(obj.weekIndex);
  }
}
