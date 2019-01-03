import 'package:meta/meta.dart';
import 'package:code_crafter/src/source_element.dart';
import 'directive.dart';
import 'package:code_crafter/src/utils.dart';


//TODO: just a draft of the Library class
class LibraryFile extends SourceElement {
  final Library library;
  final Part part;
  final PartOf partof;
  final List<Import> imports;
  final List<Export> exports;
  LibraryFile(this.library, this.part, this.partof, this.imports, this.exports);
  @override
  String get source {
    //final String output;
    return formatter.format(library.source + part.source + partof.source + imports.join(' ') + exports.join(' '));
  }
}