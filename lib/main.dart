import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/Home_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      themeMode:ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      darkTheme:ThemeData(
      brightness: Brightness.dark
      ),
      initialRoute: "/home",
     routes:{
       "/":(context) => LoginPage(),
       "/home":(context) => Homepage(),
       "/login":(context) => LoginPage(),

     } ,      
    );
  }
}
