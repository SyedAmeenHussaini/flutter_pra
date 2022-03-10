import 'package:flutter/material.dart';

import 'package:flutter_catalog/pages/widegts/drawer.dart';

class Homepage extends StatelessWidget {
  final int = 30;
  final String = 'miracle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MiracleApp",style: TextStyle(color: Colors.black),),
        ),
        body : Center(
      child: Container(child: Text("welcome android developer")
      ),
    ),
     drawer: MyDrawer(),
    );
  }
}
