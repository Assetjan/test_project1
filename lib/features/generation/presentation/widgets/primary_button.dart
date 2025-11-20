import 'package:flutter/material.dart';
import 'package:test_task/core/theme/text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final bool enabled;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.enabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        child: Text(
          label,
          style: AppTextStyles.button,
        ),
      ),
    );
  }
}
