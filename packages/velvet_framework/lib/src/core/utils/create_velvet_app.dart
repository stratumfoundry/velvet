import 'package:velvet_framework/src/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/src/kernel/kernel.dart';

/// Create a new Velvet app.
///
/// This is the entry point of the Velvet framework.
///
/// ```dart
/// void main() {
///   createVelvetApp().run();
/// }
/// ```
KernelContract createVelvetApp() {
  return Kernel();
}
