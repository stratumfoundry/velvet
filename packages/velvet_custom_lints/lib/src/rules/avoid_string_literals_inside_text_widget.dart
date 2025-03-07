import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/error.dart' hide LintCode;
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class AvoidStringLiteralsInsideTextWidget extends DartLintRule {
  const AvoidStringLiteralsInsideTextWidget() : super(code: _code);

  static const _code = LintCode(
    name: 'velvet_avoid_string_literals_inside_text_widget',
    problemMessage:
        'Avoid using string literals inside Text widget. Use context.translate instead.',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry
        .addInstanceCreationExpression((InstanceCreationExpression node) {
      final constructorName = node.constructorName;

      if (constructorName.toString() == 'Text') {
        final firstArgument = node.argumentList.arguments.first;

        if (firstArgument is StringLiteral) {
          reporter.atNode(node, code);
        }
      }
    });
  }
}
