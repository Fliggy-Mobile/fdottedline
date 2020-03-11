import 'package:flutter/material.dart';
import 'package:fdottedline/fdottedline.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            FDottedLine(
              color: Colors.redAccent,
              width: 200,
              height: 1,
              dottedLength: 10,
            ),
            const SizedBox(height: 20),
            FDottedLine(
              color: Colors.blue,
              width: 1,
              height: 200,
              dottedLength: 5,
              space: 10,
            ),
          ],
        ),
      ),
    );
  }
}
