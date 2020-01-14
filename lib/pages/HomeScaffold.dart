import 'package:flutter/material.dart';
import '../ProductManager.dart';

class HomeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                //for deleting menu button when open menu drawer
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('Manage Products'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('List View'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'First',
              ),
              Tab(
                text: 'Second',
              ),
            ],
          ),
        ),
        body: Container(
          child: ProductManager(startingProduct: 'initial data'),
        ),
      ),
    );
  }
}
