import 'package:flutter/material.dart';
import 'package:flutter_application_3/intro_page.dart';
import 'package:flutter_application_3/large_file_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: IntroPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LargeFileMain(),
                ),
              );
            },
            child: Text(
              "로고 바꾸기",
              style: TextStyle(color: Colors.white),
            ))
      ]),
    );
  }
}
