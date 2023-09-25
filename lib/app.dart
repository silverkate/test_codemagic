import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:test_codemagic/app_state_wrapper.dart';
import 'package:test_codemagic/router/index.dart';
import 'package:test_codemagic/services/index.dart';
import 'package:test_codemagic/styles/index.dart';

class TestCodemagic extends StatelessWidget {
  TestCodemagic({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AppStateWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.getAppTheme(context),
        routerConfig: _appRouter.config(
          navigatorObservers: () => [RouterObserver(LoggerService.instance)],
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
