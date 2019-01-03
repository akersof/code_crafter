import 'package:dart_style/dart_style.dart';

//TODO: create a formatter class and add it as a mixin for SourceElement? or maybe a field in SourceElement
final formatter = DartFormatter(); //TODO: need a mixin here for all kind of formating we need. raw? beautifull?

abstract class SourceElement {
  String get source;

  @override
  String toString() {
    return source;
  }
}
