import 'package:meta/meta.dart';
import 'source_element.dart';
import 'expression.dart';
import 'utils.dart';

//TODO: just a draft of the variable class
//TODO: we need to sperate the declaration of a variable and the usage of a variable as an expression.
class Variable extends SourceElement {
  final String type;
  final String name;
  final bool isConst;
  final bool isFinal;
  final Expression init;
  Variable({this.type = 'var', @required this.name, this.isConst = false, this.isFinal = false, this.init}) : assert(name.isNotEmpty) {
    if(isConst && isFinal)
      //TODO: create a Exception strategy with clearer message, as meta programming debugging can be a real pain.
      throw('cant be const and final at the same time');
    if((isConst || isFinal) && type == 'var')
      throw('cant be var and const or final');
    //TODO: final field initialization can be deferred in constructor need to manage this.
    if(isConst && (init == null))
      throw('const variable need to be initialized');
  }

  // TODO: function will need the same kind of utiliy. The difference between a call to the declaration of the function
  // TODO: and the call the executable expression of thz function.
  String get declaration {
    final String finalPart = isFinal ? 'final' : '';
    final String constPart = isConst ? 'const' : '';
    final String typePart = type.isNotEmpty ? type : '';
    final String namePart = name;
    final String initPart = init == null ? '' : '= ${init.source}';
    final String output = '$finalPart $constPart $typePart $namePart $initPart $semicolon';

    return formatter.format(output);
  }
  String get source => name;
}