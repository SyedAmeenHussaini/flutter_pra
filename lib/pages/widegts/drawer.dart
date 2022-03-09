import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Profile_url =
       "https://pbs.twimg.com/profile_images/1247651655065075712/fszwVtCL_400x400.jpg";
    return Drawer(
      
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [ 
            DrawerHeader(
                
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                 
                  accountName: Text("MiracleBoy", style: TextStyle(fontSize: 18)),
                  accountEmail: Text(
                    "MiracleSisonch@gmail.com",
                    style: TextStyle(fontSize: 14),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(Profile_url),
                  ),
                )),
                ListTile(
                  leading:Icon(CupertinoIcons.home,
                  color: Colors.white,
                  ) ,
                  title: Text("Home",textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),),
                ),
            ListTile(
                  leading:Icon(CupertinoIcons.profile_circled,
                  color: Colors.white,
                  ) ,
                  title: Text("Profile",textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),),
                ),
                 ListTile(
                  leading:Icon(CupertinoIcons.mail,
                  color: Colors.white,
                  ) ,
                  title: Text("Mail",textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),),
                )
         
         
          ],

        ),
      ),
    );
  }
}
