import 'package:flutter/material.dart';
import 'package:velvet_framework/src/core/utils/resolution_key.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/router/contracts/velvet_router_contract.dart';
import 'package:velvet_framework/src/theme/contracts/theme_config_contract.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translator_contract.dart';

class KernelAppWidget extends StatelessWidget {
  KernelAppWidget({super.key})
      : router = container.get<VelvetRouterContract>(),
        translator = container.get<VelvetTranslatorContract>(),
        themeConfig = container.get<ThemeConfigContract>();

  final VelvetRouterContract router;
  final VelvetTranslatorContract translator;
  final ThemeConfigContract themeConfig;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: translator.currentLocale,
      stream: translator.localeStream,
      builder: (context, locale) {
        return MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: translator.delegates(),
          supportedLocales: translator.supportedLocales,
          locale: locale.data,
          themeMode: themeConfig.themeMode,
          theme: themeConfig.lightTheme,
          darkTheme: themeConfig.darkTheme,
          builder: (context, child) => Builder(
            key: resolutionKey(),
            builder: (context) => child!,
          ),
        );
      },
    );
  }
}
