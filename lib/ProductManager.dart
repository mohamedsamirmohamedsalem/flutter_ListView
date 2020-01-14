import 'package:flutter/material.dart';
import 'package:test_app/ProductsControl.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager({this.startingProduct = 'mohamed samir'});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductManagerState();
  }
}

/////////////////////////////////////////////////////
class ProductManagerState extends State<ProductManager> {
  List<Map> products = [];

  void addProduct(Map product) {
    setState(() {
      products.add(product);
    });
  }

  void deleteProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductsControl(addProduct),
        ),
        Expanded(
          child: Products(products, deleteProduct),
        ),
      ],
    );
  }
}
