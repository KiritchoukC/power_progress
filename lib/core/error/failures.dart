import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties;
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  const Failure([this.properties = const <dynamic>[]]);

  @override
  List<Object> get props => [properties];
}
