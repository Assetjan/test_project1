import 'package:test_task/features/generation/domain/repositories/i_generation_repository.dart';

class GenerateImageUseCase {
  final IGenerationRepository _repository;

  GenerateImageUseCase(this._repository);

  Future<String> call(String prompt) {
    return _repository.generate(prompt);
  }
}
