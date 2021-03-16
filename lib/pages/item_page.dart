import 'package:flutter/cupertino.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;
  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Your Shopping List"),
            centerTitle: true,
          ),
          body: Container(
              alignment: Alignment.center,
              child: Text(
                tempItem.name +
                    " : " +
                    tempItem.price.toString() +
                    " Category :" +
                    tempItem.category,
              )),
        ));
  }
}
