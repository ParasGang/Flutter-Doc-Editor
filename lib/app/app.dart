export 'utils.dart';

import 'package:flutter/material.dart';

class FlutterDocsEditorApp extends StatelessWidget {
  const FlutterDocsEditorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
