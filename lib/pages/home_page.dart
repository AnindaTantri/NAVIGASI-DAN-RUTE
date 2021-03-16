import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'T-shirt', category: 'for men', price: 200000, stock: 23),
    Item(name: 'Long slave', category: 'for girl', price: 500000, stock: 50),
    Item(name: 'Pants', category: 'for men', price: 120000, stock: 40),
    Item(name: 'Long Pants', category: 'for men', price: 300000, stock: 100),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lets Shop!!',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Betterdays Shop"),
          ),
          body: Container(
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                        onTap: () {
                          //Navigator.pushNamed(context, '/item');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemPage(
                                      tempItem: item,
                                    )),
                          );
                        },
                        child: Card(
                            child: Container(
                          margin: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Expanded(child: Text(item.category)),
                              Expanded(child: Text(item.name)),
                              Expanded(
                                  child: Text(
                                item.stock.toString(),
                                textAlign: TextAlign.end,
                              )),
                              Expanded(
                                  child: Text(
                                item.price.toString(),
                                textAlign: TextAlign.end,
                              ))
                            ],
                          ),
                        )));
                  }))),
    );
  }
}
