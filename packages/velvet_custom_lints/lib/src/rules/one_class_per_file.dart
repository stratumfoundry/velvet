import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class OneClassPerFile extends DartLintRule {
  const OneClassPerFile() : super(code: _code);

  static const _code = LintCode(
    name: 'velvet_one_class_per_file',
    problemMessage: 'Only one class allowed per file',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    int classCount = 0;
    bool hasStatefulWidget = false;
    bool hasStateClass = false;

    context.registry.addClassDeclaration((node) {
      final element = node.declaredElement;

      if (element == null) {
        return;
      }

      classCount++;

      // Check if the class is a StatefulWidget or a State class
      if (node.name.toString().endsWith('State') &&
          node.name.toString() != 'State') {
        hasStateClass = true;
      } else if (node.name.toString().endsWith('Widget') &&
          node.name.toString() != 'Widget') {
        hasStatefulWidget = true;
      }

      // If we have both a StatefulWidget and its corresponding State class, allow it.
      if (hasStatefulWidget && hasStateClass) {
        // If both classes exist, don't apply the rule
        if (classCount > 2) {
          reporter.atNode(node, code);
        }
        return;
      }

      // Otherwise, ensure that only one class is allowed in the file.
      if (classCount > 1) {
        reporter.atNode(node, code);
      }
    });
  }
}
