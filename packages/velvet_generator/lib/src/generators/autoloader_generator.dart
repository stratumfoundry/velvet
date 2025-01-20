import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:glob/glob.dart';
import 'package:source_gen/source_gen.dart';
import 'package:velvet_annotation/velvet_annotation.dart';

class AutoloaderGenerator extends GeneratorForAnnotation<VelvetAutoloader> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final imports = <String>{};
    final classInstances = <String>[];

    final globPattern = annotation.read('glob').stringValue;
    final type = annotation.read('type').isType
        ? annotation.read('type').typeValue
        : null;
    final factory = annotation.read('factory').isNull
        ? null
        : annotation.read('factory').stringValue;

    final assets = buildStep.findAssets(Glob(globPattern));

    await for (final input in assets) {
      final library = await buildStep.resolver.libraryFor(input);
      final reader = LibraryReader(library);

      for (var classElement in reader.classes) {
        if (type != null && !_isSubtypeOf(classElement, type)) {
          continue;
        }

        if (!_hasDefaultConstructor(classElement)) {
          log.warning(
            'Class ${classElement.name} in ${input.uri} has no default constructor.',
          );
          continue;
        }

        imports.add("import '${input.uri}';");

        // Apply the factory function if provided
        final factoryInstance = factory != null
            ? factory.replaceAll('\$class', classElement.name)
            : '${classElement.name}()';

        classInstances.add(factoryInstance);
      }
    }

    // Include type import
    if (type != null) {
      imports.add("import '${type.element!.source!.uri}';");
    }

    return '''
${imports.join('\n')}

const \$${element.name}Items = [
  ${classInstances.join(',\n  ')}
];
''';
  }

  bool _isSubtypeOf(ClassElement classElement, DartType type) {
    return classElement.allSupertypes
        .any((supertype) => supertype.element == type.element);
  }

  bool _hasDefaultConstructor(ClassElement classElement) {
    return classElement.constructors
        .any((constructor) => constructor.parameters.isEmpty);
  }
}
