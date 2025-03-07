import 'package:form_velvet_plugin/src/hooks/use_form/use_form.dart';
import 'package:form_velvet_plugin/src/hooks/use_input/input_options.dart';
import 'package:form_velvet_plugin/src/hooks/use_input/use_input.dart';
import 'package:velvet_framework/velvet_framework.dart';

/// The contract for a form configuration.
///
/// This contract defines the structure of a form configuration and provides
/// a method to retrieve the default values for the form fields.
abstract class FormConfigContract extends VelvetConfig {
  /// Check if the precompiled values are enabled.
  bool get shouldUsePrecompiledValuesEnabled;

  /// Retrieves the default values for the form fields.
  /// Useful for initializing the form fields with default values on debug mode.
  Map<String, dynamic> get precompiledValues;

  /// Retrieves the default input options for the form fields.
  InputOptions get defaultInputOptions;

  InputOnFailureFactory get defaultInputOnFailureFactory;

  FormOnFailure? get defaultFormOnFailure;
}
