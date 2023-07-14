import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:system_tray/system_tray.dart';

class HomeView extends StatefulHookConsumerWidget {
  const HomeView({
    super.key,
  });

  static const routeName = '/';

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sync Vault'),
        actions: [
          if (Platform.isWindows)
            IconButton(
              icon: const Icon(Icons.arrow_downward),
              tooltip: 'Hide to system tray',
              onPressed: () async {
                await AppWindow().hide();
              },
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'New folder',
        onPressed: () async {},
        child: const Icon(Icons.add),
      ),
      body: Center(),
    );
  }
}
