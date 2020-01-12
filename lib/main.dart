import 'package:flutter/material.dart';
import 'package:test_app/ProductManager.dart';
import 'package:test_app/ProductsControl.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: Container(
          child: ProductManager(startingProduct: 'initial data'),
        ),
      ),
    );
  }
}
