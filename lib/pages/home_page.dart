import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/item.dart';


class HomePage extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, photo: 'assets/images/sugar.png'),
    Item(name: 'Salt', price: 2000, photo: 'assets/images/salt.png'),
    Item(name: 'Cheese', price: 8000, photo: 'assets/images/chesee.png'),
    Item(name: 'Garlic', price: 7000, photo: 'assets/images/garlic.png'),
    Item(name: 'Bread', price: 15000, photo: 'assets/images/bread.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
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
                Navigator.pushNamed(context, '/item', arguments: item);
              
              },
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(child: Text(item.name, style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300))),
                    Expanded(
                      child: 
                        Text(item.price.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                        ),
                        textAlign: TextAlign.end,
                    )),
                  ],
                ),
                ),
              
            );
          },
        ),
      )
    );
  }
}