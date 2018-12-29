import 'package:dart_style/dart_style.dart';

//TODO: create a formatter class and add it as a mixin for SourceElement? or maybe a field in SourceElement
final formatter = DartFormatter();

abstract class SourceElement {
  String get source;

  @override
  String toString() {
    return source;
  }
}
