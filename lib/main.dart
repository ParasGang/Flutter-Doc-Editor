import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'app/utils.dart';

void main() {
  setupLogger();

  runApp(const ProviderScope(child: FlutterDocsEditorApp()));
}
