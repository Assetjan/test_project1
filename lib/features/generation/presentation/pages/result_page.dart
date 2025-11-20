import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task/core/constants/text_constants.dart';
import 'package:test_task/core/constants/ui_constants.dart';
import 'package:test_task/core/theme/colors.dart';
import 'package:test_task/core/theme/text_styles.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_bloc.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_event.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_state.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenerateBloc, GenerateState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(AppTextConstants.appTitle),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppUiConstants.paddingL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    AppTextConstants.resultTitle,
                    style: AppTextStyles.title,
                  ),
                  const SizedBox(height: AppUiConstants.paddingS),
                  const Text(
                    'Here is a simulated preview of your generated image.',
                    style: AppTextStyles.subtitle,
                  ),
                  const SizedBox(height: AppUiConstants.paddingL),
                  Expanded(
                    child: Center(
                      child: _ResultContent(state: state),
                    ),
                  ),
                  const SizedBox(height: AppUiConstants.paddingM),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 48,
                          child: OutlinedButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: const Text(AppTextConstants.newPrompt),
                          ),
                        ),
                      ),
                      const SizedBox(width: AppUiConstants.paddingM),
                      Expanded(
                        child: SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<GenerateBloc>()
                                  .add(const GenerateEvent.tryAnotherPressed());
                            },
                            child: const Text(
                              AppTextConstants.tryAnother,
                              style: AppTextStyles.button,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ResultContent extends StatelessWidget {
  final GenerateState state;

  const _ResultContent({required this.state});

  @override
  Widget build(BuildContext context) {
    switch (state.status) {
      case GenerateStatus.loading:
        return _LoadingCard();
      case GenerateStatus.failure:
        return _ErrorCard();
      case GenerateStatus.success:
        return _ImageCard(prompt: state.prompt);
      case GenerateStatus.idle:
        return const SizedBox.shrink();
    }
  }
}

class _LoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 420),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppUiConstants.radius),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFE5E7EB),
            Color(0xFFF3F4F6),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _ErrorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 420, minHeight: 260),
      padding: const EdgeInsets.all(AppUiConstants.paddingM),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppUiConstants.radius),
        border: Border.all(color: AppColors.error.withOpacity(0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.warning_rounded,
            color: AppColors.error,
            size: 40,
          ),
          SizedBox(height: AppUiConstants.paddingS),
          Text(
            AppTextConstants.errorTitle,
            style: AppTextStyles.title,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppUiConstants.paddingS),
          Text(
            AppTextConstants.errorDescription,
            style: AppTextStyles.subtitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  final String prompt;

  const _ImageCard({required this.prompt});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 420, minHeight: 260),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppUiConstants.radius),
        gradient: const LinearGradient(
          colors: [
            AppColors.primaryDark,
            AppColors.primary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.25),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.image_rounded,
              color: Colors.white.withOpacity(0.9),
              size: 96,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppUiConstants.paddingM),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.35),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(AppUiConstants.radius),
                  bottomRight: Radius.circular(AppUiConstants.radius),
                ),
              ),
              child: Text(
                prompt.isEmpty ? 'Generated preview' : prompt,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
