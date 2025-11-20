import 'dart:math';
import 'package:get_it/get_it.dart';
import 'package:test_task/features/generation/data/datasources/mock_generation_remote_datasource.dart';
import 'package:test_task/features/generation/data/repositories/generation_repository_impl.dart';
import 'package:test_task/features/generation/domain/repositories/i_generation_repository.dart';
import 'package:test_task/features/generation/domain/usecases/generate_image_usecase.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_bloc.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerLazySingleton<Random>(() => Random());

  getIt.registerLazySingleton<MockGenerationRemoteDataSource>(
    () => MockGenerationRemoteDataSource(getIt<Random>()),
  );

  getIt.registerLazySingleton<IGenerationRepository>(
    () => GenerationRepositoryImpl(getIt<MockGenerationRemoteDataSource>()),
  );

  getIt.registerLazySingleton<GenerateImageUseCase>(
    () => GenerateImageUseCase(getIt<IGenerationRepository>()),
  );

  getIt.registerLazySingleton<GenerateBloc>(
    () => GenerateBloc(getIt<GenerateImageUseCase>()),
  );
}
