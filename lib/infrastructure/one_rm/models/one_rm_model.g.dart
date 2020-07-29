// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_rm_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OneRmModelAdapter extends TypeAdapter<OneRmModel> {
  @override
  final int typeId = 2;

  @override
  OneRmModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OneRmModel(
      exerciseId: fields[1] as int,
      month: fields[2] as int,
      oneRm: fields[3] as double,
    )..id = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, OneRmModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.exerciseId)
      ..writeByte(2)
      ..write(obj.month)
      ..writeByte(3)
      ..write(obj.oneRm);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneRmModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
