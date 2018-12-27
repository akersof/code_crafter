import 'package:dart_style/dart_style.dart';

final formatter =  DartFormatter();


abstract class SourceElement {
  String get source;

  @override
  String toString() {
    return source;
  }
}
