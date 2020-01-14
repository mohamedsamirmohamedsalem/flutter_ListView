import 'package:flutter/material.dart';
import '../ProductManager.dart';

class HomeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: Container(
        child: ProductManager(startingProduct: 'initial data'),
      ),
    );
  }
}
