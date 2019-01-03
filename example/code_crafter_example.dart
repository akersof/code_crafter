import 'package:code_crafter/code_crafter.dart';

main() {
  var v1 = Variable(modifier: Modifier.constant, name: 'v1', type: 'MyObject', init: Expression.asString('Hello world'));
  print(v1.declaration);
  print(v1.source + ';');

}
