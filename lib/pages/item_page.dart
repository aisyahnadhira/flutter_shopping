import 'package:flutter/material.dart';
import 'package:flutter_shopping/models/item.dart';

class ItemPage extends StatelessWidget {
  ItemPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(itemArgs.name + ' with ' + itemArgs.price.toString(), style: TextStyle(fontSize: 25, color: Colors.white)),
            Container(
              height: 300,
              width: 300,
              child: Image.asset(itemArgs.photo)),
          ],
        ),

      ),
    );
  }
}