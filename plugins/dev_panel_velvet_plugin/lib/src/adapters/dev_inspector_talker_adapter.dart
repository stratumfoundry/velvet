import 'package:dev_panel_velvet_plugin/src/contracts/dev_inspector_adapter_contract.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:velvet_framework/velvet_framework.dart';

class DevInspectorTalkerAdapter implements DevInspectorAdapterContract {
  @override
  void open(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (_) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.terminal)),
                  Tab(icon: Icon(Icons.settings)),
                ],
              ),
              title: Text(
                context.translate('velvet.dev_inspector.title'),
              ),
            ),
            body: TabBarView(
              children: [
                TalkerView(
                  talker: container.get<Talker>(),
                  theme: TalkerScreenTheme.fromTheme(ThemeData()),
                  appBarLeading: Text(
                    context.translate('velvet.dev_inspector.talker.title'),
                  ),
                ),
                Center(
                  child: Text(
                    context.translate('velvet.dev_inspector.settings.title'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
