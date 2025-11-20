import 'dart:math';

class MockGenerationRemoteDataSource {
  final Random _random;

  MockGenerationRemoteDataSource(this._random);

  Future<String> generate(String prompt) async {
    await Future.delayed(const Duration(milliseconds: 2200));
    final shouldFail = _random.nextBool();
    if (shouldFail) {
      throw Exception('Mock generation error');
    }
    return 'local_placeholder';
  }
}
