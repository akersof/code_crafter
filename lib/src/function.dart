import 'source_element.dart';
import 'variable.dart';

class Parameter extends Variable {

  @override
  // TODO: implement source
  String get source => null;
}

class FunctionElement extends SourceElement {
  final String name;
  final String type;
  final List<Parameter> parameters;
  final String body;
  FunctionElement(this.name, this.type, this.parameters, this.body);
  @override
  // TODO: implement source
  String get source => null;
}