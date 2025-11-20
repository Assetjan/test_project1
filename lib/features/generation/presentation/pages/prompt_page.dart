import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task/core/constants/text_constants.dart';
import 'package:test_task/core/constants/ui_constants.dart';
import 'package:test_task/core/theme/text_styles.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_bloc.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_event.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_state.dart';
import 'package:test_task/features/generation/presentation/widgets/prompt_input.dart';
import 'package:test_task/features/generation/presentation/widgets/primary_button.dart';

class PromptPage extends StatefulWidget {
  const PromptPage({super.key});

  @override
  State<PromptPage> createState() => _PromptPageState();
}

class _PromptPageState extends State<PromptPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    final bloc = context.read<GenerateBloc>();
    _controller.text = bloc.state.prompt;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenerateBloc, GenerateState>(
      builder: (context, state) {
        final isEmpty = state.prompt.trim().isEmpty;

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
                    'What should we create?',
                    style: AppTextStyles.title,
                  ),
                  const SizedBox(height: AppUiConstants.paddingS),
                  const Text(
                    'Write a short description of the image you want to see. We will simulate generation for you.',
                    style: AppTextStyles.subtitle,
                  ),
                  const SizedBox(height: AppUiConstants.paddingL),
                  PromptInput(
                    controller: _controller,
                    onChanged: (value) {
                      context
                          .read<GenerateBloc>()
                          .add(GenerateEvent.promptChanged(value));
                    },
                  ),
                  const Spacer(),
                  PrimaryButton(
                    label: AppTextConstants.generate,
                    enabled: !isEmpty,
                    onPressed: () {
                      context.push('/result');
                      context
                          .read<GenerateBloc>()
                          .add(const GenerateEvent.generatePressed());
                    },
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
