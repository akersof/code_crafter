import 'source_element.dart';
import 'variable.dart';

class Parameter extends Variable {
  //parameter can't be const but can be final initialized with a const variable

  @override
  // TODO: implement source
  String get source => null;
}

class FunctionElement extends SourceElement {
  final String name;
  final String type;
  final List<Parameter> parameters;
  final String body; //should be a Code type
  FunctionElement({this.name, this.type, this.parameters, this.body});
  @override
  // TODO: implement source
  String get source => null;
}