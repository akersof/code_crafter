import 'source_element.dart';
import 'utils.dart';

//A draft of the expression classes. A lot of things can be an expression need
//Need to check about statement too. As statement can contain expressions
//We should use a Code class within Expression class.
class Expression extends SourceElement {
  final String expression;
  Expression(this.expression);
  Expression.asString(String expression) : expression = quote(expression);
  @override
  // TODO: implement source
  String get source =>  expression;
}