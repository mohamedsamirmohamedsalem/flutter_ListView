import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  Widget updateBuildItiem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/flower.jpg'),
          Text(products[index])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return products.length > 0
        ? ListView.builder(
            itemBuilder: updateBuildItiem,
            itemCount: products.length,
          )
        : Center(
            child: Text('no thing in screen yet'),
          );
  }
}