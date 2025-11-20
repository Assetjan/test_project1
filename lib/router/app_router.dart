import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task/features/generation/presentation/pages/prompt_page.dart';
import 'package:test_task/features/generation/presentation/pages/result_page.dart';

class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (_, __) => const PromptPage(),
        ),
        GoRoute(
          path: '/result',
          builder: (_, __) => const ResultPage(),
        ),
      ],
    );
  }
}
