import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/Home_page.dart';
import 'package:flutter_catalog/pages/utilits/approut.dart';
import 'package:flutter_catalog/pages/widegts/theme.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      themeMode:ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,

     
      initialRoute: "/homeRout",
     routes:{
       "/":(context) => LoginPage(),
       MyRoutes.homeRout :(context) => Homepage(),
       MyRoutes.loginRout:(context) => LoginPage(),

     } ,      
    );
  }


  
}
