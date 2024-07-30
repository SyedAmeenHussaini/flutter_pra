import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/widegts/drawer.dart';
import 'package:velocity_x/velocity_x.dart';




class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal:2 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Miracle App"
              .text
              .xl5
              .bold
              .color(Theme.of(context).shadowColor)
              .make(),
          "Trending products".text.xl2.make(),
          
        ],
      ),
    );
  }
}
