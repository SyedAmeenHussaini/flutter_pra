import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/Home_page.dart';
import 'package:flutter_catalog/pages/utilits/approut.dart';
import 'package:flutter_catalog/pages/widegts/drawer.dart';
import 'package:flutter_catalog/pages/widegts/home_details_page.dart';
import 'package:flutter_catalog/pages/widegts/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart';

void main() {
  
  runApp(VxState(
    store:MyStore() ,
    
  child: const Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

     
      themeMode:ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
     routeInformationParser: VxInformationParser(),
     routerDelegate: VxNavigator(routes:{
        "/":(_,__) =>  const MaterialPage(child: LoginPage()),
        MyRoutes.homeRoute :(_,__) => const MaterialPage(child: Homepage()),
         MyRoutes.homeDetailsRoute :(uri,params) {
           final catalog= (VxState.store as MyStore).catalog.getById(int.parse(uri.queryParameters["id"].toString()));
          
           return MaterialPage(child: HomeDetailPage(
           catalog:catalog ,
           ));
         },
        MyRoutes.loginRoute:(_,__) =>  const MaterialPage(child: LoginPage()),
        MyRoutes.cartRoute:(_,__) =>  const MaterialPage(child: const CartPage())
       }
     ),
     
    //initialRoute: "/homeRout",
      // routes:{
      //   "/":(context) => const LoginPage(),
      //   MyRoutes.homeRoute :(context) => const Homepage(),
      //   MyRoutes.loginRoute:(context) => const LoginPage(),
      //   MyRoutes.cartRoute:(context) => const CartPage()



   );
  
  
  }



  
}
