import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_week6/models/item.dart';

class ItemPage extends StatelessWidget{
  final Item tempItem;

  ItemPage({Key key, this.tempItem}) : super(key: key);
   
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(tempItem.name),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Kode : " + tempItem.kode.toString()),
              Text("Harga : " + tempItem.price.toString()),
              Text("Stok : " + tempItem.stok.toString()),
              Text("Deskripsi : " +tempItem.deskripsi.toString()),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}