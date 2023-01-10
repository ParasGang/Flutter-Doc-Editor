export 'utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_doc_editor/app/navigation/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

class FlutterDocsEditorApp extends ConsumerStatefulWidget {
  const FlutterDocsEditorApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FlutterDocsEditorAppState();
}

class _FlutterDocsEditorAppState extends ConsumerState<FlutterDocsEditorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate:
          RoutemasterDelegate(routesBuilder: (context) => routesLoggedout),
      routeInformationParser: RoutemasterParser(),
    );
  }
}
