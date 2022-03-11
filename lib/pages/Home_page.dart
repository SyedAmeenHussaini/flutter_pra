import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

import 'package:flutter_catalog/pages/widegts/drawer.dart';
import 'package:flutter_catalog/pages/widegts/item_widget.dart';


class Homepage extends StatelessWidget {
  final int = 30;
  final String = 'miracle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MiracleApp",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder:(context, index){
          return ItemWidget(item: CatalogModel.items[index],);
        } ),



      drawer: MyDrawer(),
    );
  }
}

