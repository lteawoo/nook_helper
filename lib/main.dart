import 'package:flutter/material.dart';

import 'catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nooks Helper',
      home: Scaffold(
        body: Catalog(),
      ),
    );
  }
}