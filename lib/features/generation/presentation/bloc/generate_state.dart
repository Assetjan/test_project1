import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_state.freezed.dart';

enum GenerateStatus {
  idle,
  loading,
  success,
  failure,
}

@freezed
abstract class GenerateState with _$GenerateState {
  const factory GenerateState({
    @Default('') String prompt,
    @Default(GenerateStatus.idle) GenerateStatus status,
    String? imageToken,
  }) = _GenerateState;
}
