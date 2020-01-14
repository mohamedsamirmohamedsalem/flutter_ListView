import 'package:flutter/material.dart';
import './pages/FlowerDetailsScaffold.dart';

class Products extends StatelessWidget {
  final List<Map> products;
  final Function deleteProduct;

  Products(this.products, this.deleteProduct);

  Widget updateBuildItiem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('Flower Details'),
          Image.asset(products[index]['image']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => FlowerDetailsScaffold(
                      products[index]['title'],
                      products[index]['image'],
                    ),
                  ),
                ).then((bool value) {
                  if (value) {
                    deleteProduct(index);
                  }
                }),
              ),
            ],
          ),
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
