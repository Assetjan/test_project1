import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/features/generation/domain/usecases/generate_image_usecase.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_event.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_state.dart';

class GenerateBloc extends Bloc<GenerateEvent, GenerateState> {
  final GenerateImageUseCase _generateImageUseCase;

  GenerateBloc(this._generateImageUseCase) : super(const GenerateState()) {
    on<PromptChanged>(_onPromptChanged);
    on<GeneratePressed>(_onGenerate);
    on<TryAnotherPressed>(_onGenerate);
    on<RetryPressed>(_onGenerate);
  }

  void _onPromptChanged(
    PromptChanged event,
    Emitter<GenerateState> emit,
  ) {
    emit(state.copyWith(prompt: event.value));
  }

  Future<void> _onGenerate(
    GenerateEvent event,
    Emitter<GenerateState> emit,
  ) async {
    if (state.prompt.trim().isEmpty) return;

    emit(
      state.copyWith(
        status: GenerateStatus.loading,
      ),
    );

    try {
      final token = await _generateImageUseCase(state.prompt.trim());
      emit(
        state.copyWith(
          status: GenerateStatus.success,
          imageToken: token,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: GenerateStatus.failure,
        ),
      );
    }
  }
}
