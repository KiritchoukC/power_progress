import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'one_rm_failure.freezed.dart';

@freezed
abstract class OneRmFailure with _$OneRmFailure {
  const factory OneRmFailure.storageError() = StorageError;
  const factory OneRmFailure.unexpectedError() = UnexpectedError;
  const factory OneRmFailure.itemDoesNotExist() = ItemDoesNotExist;
  const factory OneRmFailure.itemAlreadyExists() = ItemAlreadyExists;
}
