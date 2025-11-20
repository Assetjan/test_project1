import 'package:flutter/material.dart';
import 'package:test_task/core/constants/text_constants.dart';

class PromptInput extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const PromptInput({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 5,
      minLines: 3,
      textInputAction: TextInputAction.newline,
      decoration: const InputDecoration(
        hintText: AppTextConstants.promptHint,
      ),
      onChanged: onChanged,
    );
  }
}
