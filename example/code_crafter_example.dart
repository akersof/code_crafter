import 'package:code_crafter/code_crafter.dart';
//import 'package:code_crafter/src/library.dart';

main() {
  //TODO: big mess if the expression return value is a String..
  var v1 = Variable(name: 'v1', type: 'MyObject', isConst: true, init: Expression('Hello world'));
  print(v1.source);

}
