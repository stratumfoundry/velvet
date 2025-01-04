import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/velvet_support.dart';

void main() {
  test('FactoryWrapperContract should have a factory getter', () {
    final wrapper = MockFactoryWrapper();
    expect(wrapper.factory, isA<Function>());
  });
}

// ignore: prefer-match-file-name
class MockFactoryWrapper implements FactoryWrapper {
  @override
  // ignore: avoid_empty_blocks, no-empty-block
  Function get factory => () {};
}
