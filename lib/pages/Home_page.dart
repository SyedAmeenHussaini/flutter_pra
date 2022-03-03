import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int = 30;
  final String = 'miracle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MiracleApp"),
        ),
        body : Center(
      child: Container(child: Text("welcome android developer")
      ),
    ),
     drawer: Drawer(),
    );
  }
}
