import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/Home_page.dart';
import 'package:flutter_catalog/pages/utilits/approut.dart';
import 'package:flutter_catalog/pages/widegts/theme.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      themeMode:ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,

     
      initialRoute: "/homeRout",
     routes:{
       "/":(context) => const Homepage(),
       MyRoutes.homeRoute :(context) => const Homepage(),
       MyRoutes.loginRoute:(context) => const LoginPage(),
       MyRoutes.cartRoute:(context) => const CartPage()

     } ,      
    );
  }


  
}
