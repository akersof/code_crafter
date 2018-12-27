//import 'package:code_crafter/code_crafter.dart';
import 'package:code_crafter/src/library.dart' show Package, Import, Export hide Part, PartOf;

main() {
  var coucou = Import(package: Package(uri: "zer"), as: 'wtf', show: ['azez', "azeazeaze"])..show.add("coucou")..hide.add('zeubi');
  var exp = Export(package: Package(uri: "prou"), hide: ["jpp"])..show.addAll(['j', 'r', 'ezr']);

  print(coucou.source);
  print(exp.source);
}
