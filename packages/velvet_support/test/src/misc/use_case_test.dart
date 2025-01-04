import 'package:flutter_test/flutter_test.dart';
import 'package:velvet_support/velvet_support.dart';

void main() {
  test('UseCaseContract execute returns correct result', () async {
    final useCase = MockUseCase();
    const expected = 'Mock result';

    final result = await useCase.execute();

    expect(result, expected);
  });
}

// ignore: prefer-match-file-name
class MockUseCase implements UseCase<void> {
  @override
  Future<String> execute() async {
    return 'Mock result';
  }
}
