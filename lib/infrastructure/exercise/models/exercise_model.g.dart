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
      name: fields[1] as String,
      incrementation: fields[2] as double,
      month: fields[4] as int,
      nextWeekIndex: fields[5] as int,
      note: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ExerciseModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.incrementation)
      ..writeByte(3)
      ..write(obj.note)
      ..writeByte(4)
      ..write(obj.month)
      ..writeByte(5)
      ..write(obj.nextWeekIndex);
  }
}
