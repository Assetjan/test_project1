import 'package:test_task/features/generation/data/datasources/mock_generation_remote_datasource.dart';
import 'package:test_task/features/generation/domain/repositories/i_generation_repository.dart';

class GenerationRepositoryImpl implements IGenerationRepository {
  final MockGenerationRemoteDataSource _remote;

  GenerationRepositoryImpl(this._remote);

  @override
  Future<String> generate(String prompt) {
    return _remote.generate(prompt);
  }
}
