import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_basic_app/routing/routes.dart';
import 'package:velvet_framework/velvet_framework.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final translator = container.get<VelvetTranslatorContract>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                FormRoute().push(context);
              },
              child: Text(translate('pages.home.go_to_form')),
            ),
            Text(translate('pages.home.title')),
            ElevatedButton(
              onPressed: () {
                if (translator.currentLocale == const Locale('en')) {
                  translator.setLocale(context, const Locale('it'));
                } else {
                  translator.setLocale(context, const Locale('en'));
                }
              },
              child: Text(translate('pages.home.switch')),
            ),
          ],
        ),
      ),
    );
  }
}
