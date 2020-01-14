import 'package:flutter/material.dart';
import 'dart:async';

class FlowerDetailsScaffold extends StatelessWidget {
  String title;
  String imageURL;

  FlowerDetailsScaffold(this.title, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        //for muting error appeard in console while pressing navigation back button
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(imageURL),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text('back'),
                color: Theme.of(context).primaryColor,
                onPressed: () => Navigator.pop(context, true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
