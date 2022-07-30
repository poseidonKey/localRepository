import 'package:flutter/material.dart';
import 'package:flutter_application_3/file_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FileApp(),
    );
  }
}
