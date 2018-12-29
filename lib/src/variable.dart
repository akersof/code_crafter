import 'package:meta/meta.dart';
import 'source_element.dart';

//TODO: just a draft of the variable class
class Variable extends SourceElement {
  final String type;
  final String name;
  final bool isConst;
  final bool isFinal;
  Variable({this.type = 'var', @required this.name, this.isConst = false, this.isFinal = false}) {
    if(isConst && isFinal)
      throw('cant be const and final at the same time');
  }
  @override
  String get source {
    return '';
  }
}