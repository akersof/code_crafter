import 'package:code_crafter/code_crafter.dart';
//import 'package:code_crafter/src/library.dart';

main() {
  var v1 = Variable(name: 'v1', type: 'MyObject', isConst: true, init: Expression.asString('Hello world'));
  print(v1.declaration);
  print(v1.source + ';');

}
