import 'package:meta/meta.dart';
import 'package:code_crafter/src/source_element.dart';
import 'package:code_crafter/src/utils.dart';

//TODO: need to write a class for the script and library tag;

class Package {
  final String uri;
  //TODO: check viability of the uri in constructor, prefix, sufix, path, presence in pubspec.yaml possible? porbbaly with analyzer
  Package({@required this.uri}) : assert(uri.isNotEmpty);
}

abstract class _ImExport extends SourceElement {
  final bool isImport;
  final Package package;
  final String as;
  final List<String> show;
  final List<String> hide;

  _ImExport(this.package, String as, List<String> show, List<String> hide, this.isImport) :
        as = as ?? '',
        show = show ?? [],
        hide = hide ?? []
  ;

  @override
  String get source {
    final String prefix = isImport ? 'import' : 'export';
    final String packageName = quote(package.uri);
    final String asPart = as.isEmpty || !isImport ? '' : 'as $as';
    final String showPart = show.isEmpty ? '' : 'show ${show.join(', ')}';
    final String hidePart = hide.isEmpty ? '' : 'hide ${hide.join(', ')}';
    final String output = '$prefix $packageName $asPart $showPart $hidePart $semicolon';
    return formatter.format(output);
  }
}

class Import extends _ImExport {
  Import({Package package, String as, List<String> show, List<String> hide}) :
  super(package, as, show, hide, true);
}

class Export extends _ImExport {
  Export({Package package, List<String> show, List<String> hide}) :
    super(package, '', show, hide, false);
}

class Part extends SourceElement {
  final Package package;
  Part(this.package);
  @override
  // TODO: implement source
  String get source => null;
}

class PartOf extends SourceElement {
  final String package;
  PartOf(this.package);
  @override
  // TODO: implement source
  String get source => null;
}
