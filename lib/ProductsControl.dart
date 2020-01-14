import 'package:flutter/material.dart';

class ProductsControl extends StatelessWidget {
//ProductsControl();

  final Function addProduct;

  ProductsControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      child: Text('add data'),
      onPressed: () {
        addProduct({'title': 'rose Flower', 'image': 'assets/flower.jpg'});
      },
    );
  }
}
