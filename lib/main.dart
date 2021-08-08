import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String title = "Container";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onDoubleTap: (){
              setState(() {
                title = "After Pressed";
              });
            },
            child: Container(
              child: Text(title),
            ),
          ),
        ),
      ),
    );
  }
}
