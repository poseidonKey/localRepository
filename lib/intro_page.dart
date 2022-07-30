import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'package:path_provider/path_provider.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  Widget logo = Icon(
    Icons.info,
    size: 50,
  );

  @override
  void initState() {
    super.initState();
    initData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              logo,
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return MyHomePage();
                  }));
                },
                child: Text('다음으로 가기 '),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }

  void initData() async {
    var dir = await getApplicationDocumentsDirectory();
    bool fileExist = await File(dir.path + '/myimage.jpg').exists();
    if (fileExist) {
      setState(() {
        logo = Image.file(
          File(dir.path + '/myimage.jpg'),
          height: 200,
          width: 200,
          fit: BoxFit.contain,
        );
      });
    }
  }
}
