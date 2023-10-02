import 'package:flutter/material.dart';
import 'package:learning_app/Screen/fillDataFormScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: fillDataFormScreen(),
      title: "learn FireStore",
      theme: ThemeData(primarySwatch: Colors.cyan),
    ),
  );
}

class mainpage extends StatefulWidget {
  State<StatefulWidget> createState() => _mainpage();
}

class _mainpage extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cloud Firestore"),
      ),
    );
  }
}
