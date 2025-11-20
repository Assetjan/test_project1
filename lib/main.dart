import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task/core/constants/text_constants.dart';
import 'package:test_task/core/service/injectable/injectable_service.dart';
import 'package:test_task/core/theme/theme.dart';
import 'package:test_task/features/generation/presentation/bloc/generate_bloc.dart';
import 'package:test_task/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  final router = AppRouter.createRouter();
  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GenerateBloc>.value(
      value: getIt<GenerateBloc>(),
      child: MaterialApp.router(
        title: AppTextConstants.appTitle,
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
