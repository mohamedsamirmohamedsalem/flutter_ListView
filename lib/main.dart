import 'package:flutter/material.dart';
import 'package:test_app/ProductManager.dart';
import 'package:test_app/pages/HomeScaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepOrange,
      ),
      home: HomeScaffold(),
    );
  }
}
