import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_event.freezed.dart';

@freezed
class GenerateEvent with _$GenerateEvent {
  const factory GenerateEvent.promptChanged(String value) = PromptChanged;
  const factory GenerateEvent.generatePressed() = GeneratePressed;
  const factory GenerateEvent.tryAnotherPressed() = TryAnotherPressed;
  const factory GenerateEvent.retryPressed() = RetryPressed;
}
